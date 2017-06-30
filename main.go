package main

import (
	"net/http"

	"github.com/astaxie/beego"

	_ "cms/src/routers"
	_ "cms/src/service"
)

func main() {
	beego.SetLevel(beego.LevelDebug)
	beego.SetLogger("console", "")
	beego.ErrorHandler("404", page_not_found)
	beego.ErrorHandler("401", page_note_permission)
	beego.Run()
}

func page_not_found(rw http.ResponseWriter, r *http.Request) {
	rw.Write([]byte("404 page not found"))
}

func page_note_permission(rw http.ResponseWriter, r *http.Request) {
	rw.Write([]byte("401 permission denied"))

}
