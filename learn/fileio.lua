-- r: Read only (default)
-- w: overwrite or create a new file
-- a: append or create a new file
-- r+: read & write existing file
-- w+: overwrite read or create a file
-- a+: append read or create a file

file = io.open("test.txt", "w+")

file:write("Random string of text\n")
file:write("Some more text\n")

file:seek("set", 0)

print(file:read("*a"))

file:close()

file = io.open("text.txt", "a+")
file:write("Even more text\n")

file:seek("set", 0)
print(file:read("*a"))
file:close()