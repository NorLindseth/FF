package main

import (
  "log"
  "net/http"
  "database/sql"
  _ "github.com/go-sql-driver/mysql"
)

func main() {
  db, err := sql.Open("mysql",
		"root:@tcp(127.0.0.1:3306)/hello")
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()
  err = db.Ping()
  if err != nil {
  	log.Println("ERROR SQL")
  }


  fs := http.FileServer(http.Dir("static"))
  http.Handle("/", fs)

  log.Println("Listening...")
  http.ListenAndServe(":80", nil)
}
