fn main() {
    // Print "Hello, World!" to the console
    println!("Hello, World!");
}

/*
    rustc HelloWord.rs
    ./HelloWord
*/


// Simple demo
fn main() {
    let name = String::from("Rust");
    
    // Pass reference to avoid taking ownership
    greet(&name); 

    // `name` is still valid here because we passed a reference
    println!("Again: {}", name);
}

fn greet(name: &str) {
    println!("Hello, {}!", name);
}