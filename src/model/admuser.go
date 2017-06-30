package model

import "time"

type Admuser struct {
	Id         int64     `json:"id"`
	Account    string    `json:"account" xorm:"unique"`
	Mail       string    `json:"mail"`
	Name       string    `json:"name"`
	Phone      string    `json:"phone"`
	Department string    `json:"department"`
	Password   string    `json:"password"`
	CreatedAt  time.Time `json:"createtime" xorm:"created"`
	UpdatedAt  time.Time `json:"updatetime" xorm:"updated"` // 更新时间
	DeletedAt  time.Time `json:"-"  xorm:"deleted"`
}
