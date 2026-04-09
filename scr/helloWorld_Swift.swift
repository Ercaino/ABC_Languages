print("Hello, World!")

/*
    swiftc HelloWord.swift -o HelloWord
    ./HelloWord
*/


// Simple demo
struct Greeter {
    let name: String

    func greet() {
        print("Hello, $name)!")"
    }
}

let person = Greeter(name: "Alice")
person.greet()