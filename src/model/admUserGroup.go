package model

import "time"

type Admusergroup struct {
	Id        int64     `json:"id"`
	Groupname string    `json:"groupname"`
	Des       string    `json:"describe"`
	CreatedAt time.Time `json:"createtime" xorm:"created"`
	UpdatedAt time.Time `json:"updatetime" xorm:"updated"` // 更新时间
	DeletedAt time.Time `xorm:"deleted"`
}

type Admusergroupcheck struct {
	Id        int64     `json:"id"`
	Groupname string    `json:"groupname"`
	Des       string    `json:"describe"`
	Check     bool      `json:"check"`
	CreatedAt time.Time `json:"createtime" xorm:"created"`
	UpdatedAt time.Time `json:"updatetime" xorm:"updated"` // 更新时间
	DeletedAt time.Time `json:"-" xorm:"deleted"`
}
