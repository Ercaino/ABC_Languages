console.log("Hello, World!");

/* 
    npm install -g typescript
    tsc HelloWord.ts
    node HelloWord.js
*/


// Simple demo
function greet(name: string, age: number): void {
    console.log(`Hello, ${name}! You are ${age} years old.`);
}

const userName: string = "Alice";
const userAge: number = 30;

greet(userName, userAge);