public class HelloWorld {
    public static void main(String[] args) {
        // Print "Hello, World!" to the console
        System.out.println("Hello, World!");
    }
}

/* 
    javac HelloWorld.java
    java HelloWorld
*/

// source .java - compile .class - packaged .jar


// Simple demo
public class Greeter {
    private String name;

    // Constructor
    public Greeter(String name) {
        this.name = name;
    }

    // Method to greet
    public void greet() {
        System.out.println("Hello, " + name + "!");
    }

    // Main method to test the class
    public static void main(String[] args) {
        Greeter greeter = new Greeter("Alice");
        greeter.greet();  // Output: Hello, Alice!
    }
}
