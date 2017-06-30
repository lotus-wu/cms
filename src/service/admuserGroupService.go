package service

import (
	"cms/src/common"
	"cms/src/model"
	"strconv"
	"strings"

	"github.com/astaxie/beego"
)

type admUserGroupService struct{}

/**
查询管理员组分页列表
*/
func (this *admUserGroupService) Gridlist(groupName string, pager *common.Pager) (int, []model.Admusergroup) {

	var err error
	var count int64
	condition := genAdmUserGroupCondition(groupName)
	if count, err = o.Alias("t").Where(condition).Count(new(model.Admusergroup)); err != nil {
		beego.Warn("Count failed:", err.Error())
		return 0, nil
	}

	datas := []model.Admusergroup{} //多个数据
	if err := o.Alias("t").Where(condition).Limit(pager.GetLen(), pager.GetBegin()).Find(&datas); err != nil {
		beego.Warn("find admin User failed:", err.Error())
		return 0, nil
	}

	return int(count), datas

}

func genAdmUserGroupCondition(groupName string) (condition string) {

	if groupName != "" {
		condition += "   t.groupname = " + groupName
	}
	return
}

/**
添加管理员组
*/
func (this *admUserGroupService) AddAdmUserGroup(admusergroup *model.Admusergroup, ids string) error {
	id, err := o.Insert(admusergroup)
	if err != nil || id < 1 {
		return &common.BizError{"添加失败"}
	}
	flag := false
	idArray := strings.Split(ids, ",")
	for _, roleId := range idArray {
		beego.Debug("给ID为", id, "的管理员组添加", roleId, "权限")
		roleIdInt, err := strconv.ParseInt(roleId, 10, 64)
		if err != nil {
			beego.Warn(roleId, "不是数字")
			flag = true
			continue
		}
		groupRoleRel := &model.GroupRoleRel{
			Groupid: id,
			Roleid:  roleIdInt}
		if _, err := o.Insert(groupRoleRel); err != nil {
			beego.Warn("给ID为", id, "的管理员组添加", groupRoleRel.Roleid, "权限失败")
			flag = true
			continue
		}
	}
	if flag {
		return &common.BizError{"出现异常，部分权限添加失败，请补充添加权限。"}
	}
	return nil
}

/**
修改管理员组
*/
func (this *admUserGroupService) Modifyadmusergroup(admusergroup *model.Admusergroup, ids string) error {
	//修改基础信息
	if _, err := o.Id(admusergroup.Id).Update(admusergroup); err != nil {
		beego.Warn("update admusergroup db error.", err.Error())
		return &common.BizError{"修改失败"}
	}

	id := admusergroup.Id
	//删除当前组关联的所有权限
	if _, err := o.Where("groupid = ?", admusergroup.Id).Delete(new(model.GroupRoleRel)); err != nil {
		beego.Warn("del group's role fail.", err.Error())
		return &common.BizError{"修改失败"}
	}

	//重新添加权限
	flag := false
	idArray := strings.Split(ids, ",")
	for _, roleId := range idArray {
		beego.Debug("给ID为", id, "的管理员组添加", roleId, "权限")
		roleIdInt, err := strconv.ParseInt(roleId, 10, 64)
		if err != nil {
			beego.Warn(roleId, "不是数字")
			flag = true
			continue
		}
		groupRoleRel := &model.GroupRoleRel{
			Groupid: id,
			Roleid:  roleIdInt}
		if _, err := o.Insert(groupRoleRel); err != nil {
			beego.Warn("给ID为", id, "的管理员组添加", groupRoleRel.Roleid, "权限失败", err.Error())
			flag = true
			continue
		}
	}
	if flag {
		return &common.BizError{"出现异常，部分权限添加失败，请补充添加权限。"}
	}
	return nil
}

/**
删除管理员组
*/
func (this *admUserGroupService) Delete(ids string) error {

	idss := strings.Split(ids, ",")
	if _, err := o.In("id", idss).Delete(new(model.Admusergroup)); err != nil {
		beego.Warn("delete fail id:", ids, err.Error())
		return &common.BizError{"删除失败"}
	}

	//删除当前组关联的所有权限
	if _, err := o.In("groupid", idss).Delete(new(model.GroupRoleRel)); err != nil {
		beego.Warn("del group's role fail.", err.Error())
		return &common.BizError{"删除失败"}
	}

	return nil
}

/**
根据ID获取管理员组信息
*/
func (this *admUserGroupService) GetAdmUserGroupById(id int64) model.Admusergroup {
	admusergroup := model.Admusergroup{}
	if _, err := o.Id(id).Get(&admusergroup); err != nil {
		return model.Admusergroup{}
	}
	return admusergroup
}

/**
根据管理员组ID获取所有的权限列表
*/
func (this *admUserGroupService) GetAllRoleByGroupId(id int64) map[int64]bool {
	list := []model.GroupRoleRel{}
	err := o.Table(new(model.GroupRoleRel)).Cols("roleid").Where("groupid = ?", id).Find(&list)
	if err != nil {
		return nil
	}
	roleIdMap := make(map[int64]bool, len(list))
	for i := 0; i < len(list); i++ {
		roleIdMap[list[i].Roleid] = true
	}
	return roleIdMap
}
