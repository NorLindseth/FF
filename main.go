package main

import (
	"database/sql"
	"log"
	"net/http"
	"reflect"

	_ "github.com/go-sql-driver/mysql"
)

func main() {
	db, err := sql.Open("mysql",
		"root:@tcp(localhost:3306)/produkt_db")
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()
	err = db.Ping()
	if err != nil {
		log.Println("ERROR SQL", err)
	}

	fs := http.FileServer(http.Dir("static"))
	http.Handle("/", fs)

	rows, err := db.Query("SELECT * FROM primærkategori, subkategori WHERE primærkategori.id = subkategori.primær_id")
	if err != nil {
		log.Fatal(err)
	}
	for rows.Next() {
		var id int
		var navn string
		var id2 int
		var navn2 string
		var beskrivelse sql.NullString
		//var beskrivelse2 string
		var primær_id int

		err = rows.Scan(&id, &navn, &id2, &navn2, &beskrivelse, &primær_id)
		if err != nil {
			log.Fatal(err)
		}
		if reflect.TypeOf(beskrivelse) == nil {
			//beskrivelse2 = "N/A"
		}
		//beskrivelse2 = "test"

		log.Println(id)
		log.Println(navn)
		log.Println(id2)
		log.Println(navn2)
		log.Println(beskrivelse)
		log.Println(primær_id)
	}
	log.Println("Listening...")
	http.ListenAndServe(":80", nil)
}
