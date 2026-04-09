CREATE TABLE helloworld (phrase TEXT);
INSERT INTO helloworld VALUES ("Hello World!");
INSERT INTO helloworld VALUES ("Goodbye World!");

SELECT * FROM helloworld WHERE phrase = "Hello World!";

-- mysql -u username -p -e "source hello.sql"
-- psql -U username -f hello.sql
-- sqlite3 < hello.sql


-- Simple demo
-- Create a table called "users"
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE
);

-- Insert sample data
INSERT INTO users (name, email) VALUES ('Alice', 'alice@example.com');
INSERT INTO users (name, email) VALUES ('Bob', 'bob@example.com');

-- Query the data
SELECT * FROM users;