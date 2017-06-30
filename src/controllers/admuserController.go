package controllers

import (
	"cms/src/common"
	"cms/src/model"
	"cms/src/service"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/validation"
)

type AdmUserController struct {
	BaseController
}

/**
进入管理员列表页面
*/
func (this *AdmUserController) List() {
	this.show("admUser/list.html")
}

/**
获取分页展示数据
*/
func (this *AdmUserController) Gridlist() {
	pageNum, _ := this.GetInt("page")
	rowsNum, _ := this.GetInt("rows")
	admusermail := this.GetString("admusermail")
	admuserphone := this.GetString("admuserphone")
	admusername := this.GetString("admusername")
	admuserid := this.GetString("admuserid")
	account := this.GetString("admaccout")
	p := common.NewPager(pageNum, rowsNum)
	count, admuser := service.AdmUserService.Gridlist(p, admuserid, admusermail, admusername, admuserphone, account)
	this.jsonResultPager(count, admuser)
}

/**
进入添加页面
*/
func (this *AdmUserController) Toaddadmuser() {
	this.show("admUser/add.html")
}

/**
添加管理员
*/
func (this *AdmUserController) Add() {

	groupIds := this.GetString("ids")

	beego.Info("==============================")
	user := model.Admuser{}
	err := this.ParseForm(&user)
	if err != nil {
		beego.Warn(err)
	}
	beego.Warn(user)
	beego.Warn(this.Input())
	beego.Info("==============================")
	//参数校验
	valid := validation.Validation{}
	valid.Required(user.Account, "账号").Message("不能为空")
	valid.MaxSize(user.Account, 20, "账号").Message("长度不能超过20个字符")
	valid.Required(user.Mail, "邮箱").Message("不能为空")
	valid.MaxSize(user.Mail, 50, "邮箱").Message("长度不能超过50个字符")
	valid.Email(user.Mail, "邮箱").Message("格式错误")
	valid.Required(user.Name, "姓名").Message("不能为空")
	valid.MaxSize(user.Name, 20, "姓名").Message("长度不能超过20个字符")
	valid.Required(user.Phone, "手机号码").Message("不能为空")
	valid.MaxSize(user.Phone, 15, "手机号码").Message("长度不能超过15个字符")
	valid.Required(user.Department, "部门").Message("不能为空")
	valid.MaxSize(user.Department, 20, "部门").Message("长度不能超过20个字符")
	valid.Required(user.Password, "密码").Message("不能为空")
	valid.MaxSize(user.Password, 20, "密码").Message("长度不能超过20个字符")
	valid.MinSize(groupIds, 1, "组信息").Message("请至少选择一个")

	if valid.HasErrors() {
		// 如果有错误信息，证明验证没通过
		// 打印错误信息
		for _, err := range valid.Errors {
			this.jsonResult((err.Key + err.Message))
		}
	}

	user.Password = common.EncodeMessageSHA256(user.Password)

	admuser := &user

	if err := service.AdmUserService.Add(admuser, groupIds); err != nil {
		this.jsonResult(err.Error())
	}
	this.jsonResult(SUCCESS)
}

/**
进入修改页面
*/
func (this *AdmUserController) Tomodifyadmuser() {
	admUserId, _ := this.GetInt64("admUserId")
	admUser, _ := service.AdmUserService.GetUserById(admUserId)
	this.Data["admuser"] = admUser
	this.show("admUser/modify.html")
}

/**
修改管理员
*/
func (this *AdmUserController) Modify() {
	userId, _ := this.GetInt64("userId")

	groupIds := this.GetString("groupids")
	beego.Info("==============================")
	user := model.Admuser{}
	err := this.ParseForm(&user)
	if err != nil {
		beego.Warn(err)
	}
	beego.Warn(user)
	beego.Warn(this.Input())
	beego.Info("==============================")
	//参数校验
	valid := validation.Validation{}
	valid.Required(user.Account, "账号").Message("不能为空")
	valid.MaxSize(user.Account, 20, "账号").Message("长度不能超过20个字符")
	valid.Required(user.Mail, "邮箱").Message("不能为空")
	valid.MaxSize(user.Mail, 50, "邮箱").Message("长度不能超过50个字符")
	valid.Email(user.Mail, "邮箱").Message("格式错误")
	valid.Required(user.Name, "姓名").Message("不能为空")
	valid.MaxSize(user.Name, 20, "姓名").Message("长度不能超过20个字符")
	valid.Required(user.Phone, "手机号码").Message("不能为空")
	valid.MaxSize(user.Phone, 15, "手机号码").Message("长度不能超过15个字符")
	valid.Required(user.Department, "部门").Message("不能为空")
	valid.MaxSize(user.Department, 20, "部门").Message("长度不能超过20个字符")
	valid.Required(user.Password, "密码").Message("不能为空")
	valid.MaxSize(user.Password, 20, "密码").Message("长度不能超过20个字符")
	valid.MinSize(groupIds, 1, "组信息").Message("请至少选择一个")

	if valid.HasErrors() {
		// 如果有错误信息，证明验证没通过
		// 打印错误信息
		for _, err := range valid.Errors {
			this.jsonResult((err.Key + err.Message))
		}
	}

	if len(user.Password) != 0 {
		user.Password = common.EncodeMessageSHA256(user.Password)
	}

	admuser := &user
	admuser.Id = userId

	if err := service.AdmUserService.Modify(admuser, groupIds); err != nil {
		this.jsonResult(err.Error())
	}
	this.jsonResult(SUCCESS)
}

/**
删除
*/
func (this *AdmUserController) Delete() {
	userids := this.GetString("userids")
	if err := service.AdmUserService.Delete(userids); err != nil {
		this.jsonResult(err.Error())
	}
	this.jsonResult(SUCCESS)
}

/**
获取管理员组列表数据
修改管理员的时候需要加载管理员组列表，并且设置已经选择的权限为选中状态
*/
func (this *AdmUserController) Gridgrouplist() {
	admUserId, _ := this.GetInt64("admUserId")
	groupName := this.GetString("groupName")
	pageNum, _ := this.GetInt("page")
	rowsNum, _ := this.GetInt("rows")
	p := common.NewPager(pageNum, rowsNum)

	count, admuserGroup := service.AdmUserGroupService.Gridlist(groupName, p)
	checkedGroupId := service.AdmUserService.GetAllCheckGroup(admUserId)

	admUserCheckGroup := make([]model.Admusergroupcheck, len(admuserGroup))

	for index, admuser := range admuserGroup {
		admUserCheck := model.Admusergroupcheck{
			Id:        admuser.Id,
			Groupname: admuser.Groupname,
			Des:       admuser.Des,

			Check: checkedGroupId[admuser.Id]}
		admUserCheckGroup[index] = admUserCheck
	}

	this.jsonResultPager(count, admUserCheckGroup)
}
