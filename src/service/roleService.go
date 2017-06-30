package service

import (
	"cms/src/common"
	"cms/src/model"

	"strings"

	"github.com/astaxie/beego"
)

type roleService struct{}

/**
添加权限
*/
func (this *roleService) AddRole(role *model.Role) error {
	if _, err := o.Insert(role); err != nil {
		return &common.BizError{"添加失败"}
	}
	return nil
}

/**
查询列表的分页数据
*/
func (this *roleService) Gridlist(pager *common.Pager, roleid int, roleName, roleUrl string) (int, []model.Role) {
	//查询总数
	var err error
	var count int64
	condition := genCondition(roleName, roleUrl)
	if count, err = o.Alias("t").Where(condition, roleid).Count(new(model.Role)); err != nil {
		beego.Error("查询Pid为", roleid, "的role总数异常，error message：", err.Error())
		return 0, nil
	}
	beego.Debug("pid 为", roleid, "的role有", count, "个")
	if count < 1 {
		beego.Info("没有pid 为", roleid, "的role")
		return 0, nil
	}

	datas := []model.Role{} //多个数据
	if err := o.Alias("t").Where(condition, roleid).Limit(pager.GetLen(), pager.GetBegin()).Find(&datas); err != nil {
		beego.Warn("find admin User failed:", err.Error())
		return 0, nil
	}

	return int(count), datas

}

func genCondition(roleName, roleUrl string) (condition string) {
	condition = " t.pid = ?"
	if !strings.EqualFold(roleName, "") {
		condition += " and t.name = '" + roleName + "'"
	}
	if !strings.EqualFold(roleUrl, "") {
		condition += " and t.roleurl = '" + roleUrl + "'"
	}
	return
}

/**
查询树
@param needRoot:查询的数据集中是否需要包含root节点
*/
func (this *roleService) Listtree(needRoot bool) []model.RoleTree {

	var roles []model.Role
	if !needRoot {
		err := o.Find(&roles)
		if err != nil {
			beego.Error("查询权限树的role列表异常，error message：", err.Error())
			return nil
		}
	} else {

		err := o.Alias("t").Where("t.id != 0").Find(&roles)
		if err != nil {
			beego.Error("查询权限树的role列表异常，error message：", err.Error())
			return nil
		}
	}
	beego.Debug("生成权限树的数据：", roles)
	rolesTree := []model.RoleTree{}
	for i := 0; i < len(roles); i++ {
		tmp := model.RoleTree{
			Id:      roles[i].Id,
			Pid:     roles[i].Pid,
			Name:    roles[i].Name,
			Roleurl: roles[i].Roleurl,
		}
		rolesTree = append(rolesTree, tmp)
	}
	beego.Info("********************")
	beego.Info(rolesTree)

	return rolesTree
}

/**
根据ID查询role
*/
func (this *roleService) GetRoleById(id int64) (model.Role, error) {
	role := model.Role{}
	if _, err := o.Id(id).Get(&role); err != nil {
		return model.Role{}, err
	}
	return role, nil
}

/**
修改权限
*/
func (this *roleService) ModifyRole(r *model.Role) error {
	role := model.Role{}
	//根据ID读取
	if _, err := o.Id(r.Id).Get(&role); err != nil {
		return err
	}
	//修改
	if num, err := o.Id(r.Id).Update(r); num <= 0 && err != nil {
		return err
	}
	return nil
}

/**
删除权限
*/
func (this *roleService) DeleteRole(ids []string) error {
	countSubRoleSql, err := o.In("pid", ids).Count(new(model.Role))
	if err != nil || countSubRoleSql > 0 {
		return &common.BizError{"不能删除有子节点的权限，请先删除所有子节点！"}
	}
	if _, err := o.In("id", ids).Delete(new(model.Role)); err != nil {
		return &common.BizError{"删除失败！"}
	}
	return nil

}

/**
权限校验
*/
func (this *roleService) ValidateRole(controllerName, actionName string, id int64) error {
	if this.isAdministrator(id) {
		beego.Debug("用户属于超级管理员，不用校验权限")
		return nil
	}
	selectSql := "SELECT COUNT(1) FROM t_user_group_rel ur,t_role r ,t_group_role_rel gr where r.module = ? and r.action = ? and ur.userid = ? and ur.groupid = gr.groupid and r.id = gr.roleid "

	result, _ := o.Query(selectSql, controllerName, actionName, id)
	beego.Warn("****!!!!!!!!!!!!!!!", result)
	if len(result) > 0 {
		data := result[0]["COUNT(1)"][0]
		beego.Info(data)
		if data > 0 {
			return nil
		}
		//return nil
	}

	return &common.BizError{"您没有权限执行此操作，请联系系统管理员。"}
}

/**
加载权限树
*/
func (this *roleService) LoadMenu(id int64) []model.RoleTree {

	var roles []model.RoleTree
	if this.isAdministrator(id) {
		role := []model.Role{}
		if err := o.Alias("t").Where("t.id != 0 and t.ismenu = 0").Find(&role); err != nil {
			beego.Error("查询权限树的role列表异常，error message：", err.Error())
			return roles
		}
		for i := 0; i < len(role); i++ {
			tmp := model.RoleTree{
				Id:      role[i].Id,
				Pid:     role[i].Pid,
				Name:    role[i].Name,
				Roleurl: role[i].Roleurl,
			}
			roles = append(roles, tmp)
		}

	} else {
		selectSql := "SELECT DISTINCT t.id, pid, name, roleurl  from t_role t,t_user_group_rel ug,t_group_role_rel gr where t.id != 0 and t.ismenu = 0 and t.id = gr.roleid and ug.userid=? and ug.groupid = gr.groupid "
		if err := o.Sql(selectSql, id).Find(&roles); err != nil {
			beego.Error("查询权限树的role列表异常，error message：", err.Error())
			return roles
		}

	}

	pidMap := make(map[int64]bool, 10)
	for _, role := range roles {
		pidMap[role.Pid] = true
	}

	for i, role := range roles {
		//展开所有父节点
		if pidMap[role.Id] {
			roles[i].Open = true
			continue
		}
		if !strings.EqualFold(role.Roleurl, "") {
			click := "click: addTab('" + roles[i].Name + "','" + roles[i].Roleurl + "')"
			roles[i].Click = click
		}
	}

	return roles
}

/*
判断当前用户是否属于 超级管理员
*/
func (this *roleService) isAdministrator(id int64) bool {
	flag := false
	datas := []model.UserGroupRel{}
	if err := o.Alias("t").Where("t.userid = ?", id).Find(&datas); err != nil {
		return flag
	}
	for i := 0; i < len(datas); i++ {
		if datas[i].Groupid == 1 {
			return true
		}
	}
	return false

}
