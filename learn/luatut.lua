print("Hello world!")
name = "Nhat Vu"
io.write("Size of string ", #name, "\n")

bigNum = 23827489732498379879879983798738
io.write("Big Number ", type(bigNum), "\n")
longString = [[
I am a very very long string
that goes on 
forever!!
!!!
]]

longString = longString .. name
io.write(longString, "\n")

io.write(math.random(5, 100), "\n")
math.randomseed(os.time())

print(string.format("Pi = %.10f", math.pi))

age = 19

if age < 16 then
    io.write("You can go to school", "\n")
elseif true then
    print(string.format("not true = %s", tostring(not true)))
end

quote = "I changed my password to incorrect. So that ..."
io.write("Quote length: ", string.len(quote), "\n")
io.write("Quote length: ", #quote, "\n")
io.write("Replace I with me: ", string.gsub(quote, "I", "me"), "\n")
io.write("Index of password: ", string.find(quote, "password"), "\n")
io.write("Quote Upper: ", string.upper(quote), "\n")
io.write("Quote Lower: ", string.lower(quote), "\n")

i = 1
while (i <= 10) do
    io.write(i)
    i = i + 1
    if i == 8 then break end
end

print("\n")

-- repeat
--     io.write("Enter your guess: ")
--     guess = io.read()
-- until tonumber(guess) == 15

for i = 1, 10, 1 do
    io.write(i)
end

months = {"January", "February", "March", "April", "May"}

for key, value in pairs(months) do
    io.write(value, " ")
end

aTable = {}
for i = 1, 10 do
    aTable[i] = i
end
io.write("First: ", aTable[1], "\n")
io.write("Number of items: ", #aTable, "\n")

table.insert(aTable, 1, 10)
io.write("First: ", aTable[1], "\n")

print(table.concat(aTable, ", "))

table.remove(aTable, 1)
print(table.concat(aTable, ", "))

aMultiTable = {}
for i = 0, 9 do
    aMultiTable[i] = {}
    for j = 0, 9 do
        aMultiTable[i][j] = tostring(i) .. tostring(j)
    end
end

io.write("Table[1][2] : ", aMultiTable[1][2], "\n")

function getSum(num1, num2)
    return num1 + num2
end

print(string.format("5 + 2 = %d", getSum(5, 2)))

-- string.gmatch(someString, "[^%s]+")
-- for word in someString do 

function getSumMore(...)
    local sum = 0
    for k, v in pairs{...} do
        sum = sum + v
    end
    return sum
end

io.write("Sum ", getSumMore(1, 2, 3, 4, 5, 6), "\n")

doubleIt = function(x) return x * 2 end
print(doubleIt(4))

function outerFunc()
    local i = 0

    return function()
        i = i + 1
        return i
    end
end

getI = outerFunc()
print(getI())
print(getI())
print(getI())
