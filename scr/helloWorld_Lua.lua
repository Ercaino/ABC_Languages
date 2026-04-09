print("Hello World!")

-- lua hello.lua


-- Simple demo
-- Define a function to greet a user
function greet(name)
    print("Hello, " .. name .. "!")
end

-- Create a table of names
local users = {"Alice", "Bob", "Charlie"}

-- Loop through the table and greet each user
for i, name in ipairs(users) do
    greet(name)
end