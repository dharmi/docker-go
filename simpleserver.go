package main

import (
	"net/http"
)


/*
	A simple HandleFunc function that listens to HTTP request at '/' and at port 8080
 */
func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, req *http.Request) {
		w.Write([]byte("Go server listening at /"))
	})

	http.ListenAndServe(":8080", nil)
}
