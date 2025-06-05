console.log('Hello World!');

/*
    How to run: 
    Create index.html
    <!DOCTYPE html>
    <html>
    <body>
        <script src="script.js"></script>
    </body>
    </html>

    node script.js
*/


// Simple demo
function greetUser() {
    let name = prompt("What's your name?");
    alert("Hello, " + name + "!");
}

greetUser();