package model

type Role struct {
	Id      int64  `json:"id"`
	Pid     int64  `json:"pid"`
	Name    string `json:"name"`
	Module  string `json:"module" "`
	Action  string `json:"action""`
	Roleurl string `json:"roleurl"`
	Ismenu  int8   `json:"ismenu"`
	Des     string `json:"describe"`
}

type RoleTree struct {
	Id      int64  `json:"id"`
	Pid     int64  `json:"pId"`
	Name    string `json:"name"`
	Open    bool   `json:"open"`
	Checked bool   `json:"checked"`
	Roleurl string `json:"roleurl"`
	Click   string `json:"click"`
}
