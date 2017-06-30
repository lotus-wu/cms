package service

import (
	"cms/src/common"
	"cms/src/model"
	"crypto/subtle"
	"strings"

	"strconv"

	"github.com/astaxie/beego"
	"github.com/go-xorm/xorm"
)

type admUserService struct{}

/**
分页查询管理员列表
*/
func (this *admUserService) Gridlist(pager *common.Pager, admuserid, admusermail, admusername, admuserphone, account string) (int, []model.Admuser) {
	var err error
	var count int64
	condition := genAdmUserCondition(admuserid, admusermail, admusername, admuserphone, account)
	if count, err = o.Alias("t").Where(condition).Count(new(model.Admuser)); err != nil {
		beego.Warn("Count failed:", err.Error())
		return 0, nil
	}

	datas := []model.Admuser{} //多个数据
	if err := o.Alias("t").Where(condition).Limit(pager.GetLen(), pager.GetBegin()).Find(&datas); err != nil {
		beego.Warn("find admin User failed:", err.Error())
		return 0, nil
	}

	return int(count), datas
}

/**
按照参数拼接sql查询条件
*/
func genAdmUserCondition(admuserid, admusermail, admusername, admuserphone, account string) (condition string) {
	andflag := false
	andstr := " and "
	if !strings.EqualFold(admuserid, "") {
		condition += "   t.id = " + admuserid + "'"
		andflag = true
	}
	if !strings.EqualFold(admusermail, "") {
		if andflag == true {
			condition += andstr
		}
		condition += " and t.mail = '" + admusermail + "'"
		andflag = true
	}
	if !strings.EqualFold(admusername, "") {
		if andflag == true {
			condition += andstr
		}
		condition += " and t.name =  '" + admusername + "'"
		andflag = true
	}
	if !strings.EqualFold(admuserphone, "") {
		if andflag == true {
			condition += andstr
		}
		condition += " and t.phone =  '" + admuserphone + "'"
		andflag = true
	}
	if !strings.EqualFold(account, "") {
		if andflag == true {
			condition += andstr
		}
		condition += " and t.account =  '" + account + "'"
		andflag = true
	}

	beego.Debug("condition is : ", condition)
	return
}

/**
添加管理员
*/
func (this *admUserService) Add(admUser *model.Admuser, groupIds string) error {
	flag := false
	if admUserId, err := o.Insert(admUser); err != nil {
		beego.Warn("insert admUser fail, admUser:", admUser, err.Error())
		return &common.BizError{"添加失败,账号已经存在"}
	} else {
		idArray := strings.Split(groupIds, ",")
		for _, gid := range idArray {
			gidint, err := strconv.ParseInt(gid, 10, 64)
			if err != nil {
				beego.Debug("id 转换成数字异常，id：", gid)
				flag = true
			}
			rel := model.UserGroupRel{
				Userid:  admUserId,
				Groupid: gidint,
			}
			if _, err := o.Insert(&rel); err != nil {
				flag = true
			}
		}
	}
	if flag {
		return &common.BizError{"出现异常，部分权限添加失败，请补充添加权限。"}
	}
	return nil
}

/**
修改管理员
*/
func (this *admUserService) Modify(admUser *model.Admuser, groupIds string) error {
	flag := false

	if _, err := o.Id(admUser.Id).Update(admUser); err != nil {
		beego.Warn("update admUser fail, admUser:", admUser, err.Error())
		return &common.BizError{"修改失败"}
	} else {
		//逻辑删除所有用户和组关联关系UserGroupRel
		if _, err := o.Where("userid = ?", admUser.Id).Delete(new(model.UserGroupRel)); err != nil {
			return &common.BizError{"修改失败"}
		}

		idArray := strings.Split(groupIds, ",")
		//重新添加关联关系
		for _, gid := range idArray {
			gidint, err := strconv.ParseInt(gid, 10, 64)
			if err != nil {
				beego.Debug("id 转换成数字异常，id：", gid)
				flag = true
			}
			rel := model.UserGroupRel{
				Userid:  admUser.Id,
				Groupid: gidint}
			if _, err := o.Insert(&rel); err != nil {
				beego.Warn("添加组关系失败", rel, err.Error())
				flag = true
			}
		}
	}
	if flag {
		return &common.BizError{"出现异常，部分权限修改失败，请补充添加权限。"}
	}

	return nil

}

/**
删除管理员基本信息
*/
func (this *admUserService) Delete(userids string) error {
	ids := strings.Split(userids, ",")
	if _, err := o.In("id", ids).Delete(new(model.Admuser)); err != nil {
		return &common.BizError{"删除管理员基本信息失败"}
	}
	if _, err := o.In("groupid", ids).Delete(new(model.UserGroupRel)); err != nil {
		return &common.BizError{"删除管理员和组关系失败"}
	}

	return nil
}

/**
登陆鉴权
*/
func (this *admUserService) Authentication(account, encodePwd string) (admuser *model.Admuser, err error) {
	admuser = &model.Admuser{}
	if _, err := o.Table(new(model.Admuser)).Cols("id", "password").Where("account = ?", account).Get(admuser); err != nil {
		if err == xorm.ErrNotExist {
			return nil, &common.BizError{"账号不存在"}
		}
		beego.Info(err)
		return nil, &common.BizError{"登陆失败，请稍后重试"}
	}

	if subtle.ConstantTimeCompare([]byte(encodePwd), []byte(admuser.Password)) != 1 {
		return nil, &common.BizError{"密码错误"}
	}
	return admuser, nil
}

/**
根据ID查询管理员
*/
func (this *admUserService) GetUserById(id int64) (admuser *model.Admuser, err error) {

	admuser = &model.Admuser{}
	if _, err := o.Id(id).Get(admuser); err != nil {
		if err == xorm.ErrNotExist {
			err = &common.BizError{"账号不存在"}
			return nil, err
		}
		err = &common.BizError{"系统错误"}
		return nil, err
	}
	return admuser, nil
}

func (this *admUserService) GetAllCheckGroup(id int64) map[int64]bool {

	list := []model.UserGroupRel{}
	if err := o.Where("userid = ?", id).Find(&list); err != nil {
		return nil
	}
	roleIdMap := make(map[int64]bool, len(list))
	for i := 0; i < len(list); i++ {
		roleIdMap[list[i].Groupid] = true
	}
	return roleIdMap

}
