package main

import (
	"fmt"
	"io"
	"net/http"
	"time"
)

func main() {
	port := "3000"
	t := time.Now()

	// Serwer
	http.HandleFunc("/", func(responseWriter http.ResponseWriter, request *http.Request) {
		response :=
			"Adres IP klienta: " + request.RemoteAddr + "\n" +
				"Czas: " + t.Format(time.RFC1123) + "\n" +
				"Strefa Czasowa: " + t.Location().String() + "\n"

		_, _ = io.WriteString(responseWriter, response)
	})

	// Uruchomienie
	fmt.Printf("Serwer uruchomiony o %s, autor: Marcin Wójcik, port TCP: %s\n", time.Now().Format(time.RFC1123), port)
	_ = http.ListenAndServe(":"+port, nil)
}
