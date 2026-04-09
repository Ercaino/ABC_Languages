fun main() {
    println("Hello, World!")
}

/*
    kotlinc HelloWord.kt -include-runtime -d HelloWord.jar
    java -jar HelloWord.jar
*/


// Simple demo
class Greeter(val name: String) {
    fun greet() {
        println("Hello, $name!")
    }
}

fun main() {
    val person = Greeter("Alice")
    person.greet()
}


// Simple demo 2
fun main() {
    val userInput = "Alice" // Simulating user input from EditText
    println("Button clicked! Greeting user...")

    val message = greetUser(userInput)
    println(message)
}

fun greetUser(name: String): String {
    return "Hello, $name! Welcome to your Kotlin app."
}