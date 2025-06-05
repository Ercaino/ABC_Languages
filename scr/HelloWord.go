package main
import "fmt" // fmt package is used for formatted I/O operations

func main() {
   // Print "Hello, World!" to the console
   fmt.Println("Hello World!")
}

// go run HelloWord.go
/*
   go build -o HelloWord HelloWord.go
   ./HelloWord
*/


// Simple demo
package main

import (
    "fmt"
    "net/http"
)

func helloHandler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello, World!\n")
}

func main() {
    http.HandleFunc("/", helloHandler)
    fmt.Println("Starting server at port 8080...")
    if err := http.ListenAndServe(":8080", nil); err != nil {
        fmt.Println("Error starting server:", err)
    }
}