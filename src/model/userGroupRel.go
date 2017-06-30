package model

import (
	"time"
)

type UserGroupRel struct {
	Id        int64
	Userid    int64
	Groupid   int64
	CreatedAt time.Time `json:"createtime" xorm:"created"`
	UpdatedAt time.Time `json:"updatetime" xorm:"updated"` // 更新时间
	DeletedAt time.Time `json:"-" xorm:"deleted"`
}
