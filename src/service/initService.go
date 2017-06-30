package service

import (
	"cms/src/model"

	"github.com/astaxie/beego"
	_ "github.com/go-sql-driver/mysql"
	"github.com/go-xorm/core"
	"github.com/go-xorm/xorm"
)

var (
	o           *xorm.Engine
	tablePrefix string // 表前缀

	RoleService         *roleService
	AdmUserGroupService *admUserGroupService
	AdmUserService      *admUserService
)

func init() {
	beego.Info("init orm start...")
	tablePrefix = beego.AppConfig.String("db.prefix")
	var err error

	dsn := generateDSN()
	o, err = xorm.NewEngine("mysql", dsn)
	if err != nil {
		beego.Error("open db failed ", err)
	}
	tbMapper := core.NewPrefixMapper(core.SnakeMapper{}, "t_")
	o.SetTableMapper(tbMapper)

	beego.Info("init orm engine ,err", o, err)
	err = o.Sync2(new(model.Admuser),
		new(model.Admusergroup),
		new(model.Admusergroupcheck),
		new(model.GroupRoleRel),
		new(model.Role),
		new(model.RoleTree),
		new(model.UserGroupRel))
	if err != nil {
		beego.Error("db sync error ", err)
	}

	if beego.AppConfig.String("runmode") == "dev" {
		o.ShowSQL(true)
	}

	beego.Info("init orm end.")
	//初始化service
	initService()
}

func generateDSN() string {
	dbHost := beego.AppConfig.String("db_host")
	dbPort := beego.AppConfig.String("db_port")
	dbUser := beego.AppConfig.String("db_user")
	dbPassword := beego.AppConfig.String("db_pass")
	dbName := beego.AppConfig.String("db_name")

	// root:@tcp(127.0.0.1:3306)/test?charset=utf8
	dsn := dbUser + ":" + dbPassword + "@tcp(" + dbHost + ":" + dbPort + ")/" + dbName + "?charset=utf8"
	return dsn
}

func initService() {
	RoleService = &roleService{}
	AdmUserGroupService = &admUserGroupService{}
	AdmUserService = &admUserService{}
}
