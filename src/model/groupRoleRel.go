package model

import (
	"time"
)

type GroupRoleRel struct {
	Id        int64     `json:"id"`
	Groupid   int64     `json:"groupid"`
	Roleid    int64     `json:"roleid"`
	CreatedAt time.Time `json:"createtime" xorm:"created"`
	UpdatedAt time.Time `json:"updatetime" xorm:"updated"` // 更新时间
	DeletedAt time.Time `json:"-" xorm:"deleted"`
}
