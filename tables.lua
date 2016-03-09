--tables are one of the most powerful features of lua
--tables are like arrays but cooler

local from1To10 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
print(from1To10[0]) --prints nil

--why? because lua indexes from 1 not 0 like other languages

print(from1To10[1]) -- prints 1

--We can also specify indexes 
local from10to1 = {[10] = 1, [9] = 2, [8] = 3, [7] = 4, [6] = 5, [5] = 6, [4] = 7, [3] = 8, [2] = 9, [1] = 10} --specified index using index=value

print(from10to1[1]) --prints 10

--our indexes don't just have to be integers 
local person = {name="adam", age=18, friends={"Lydia", "Joe", "Bee"}}

--Oh I forgot to mention, you can nest tables within tables

--tables also can be accessed and added to like this

--accessing values
print(person.name) --prints adam
print(person.age) --prints 18
print(person["name"]) --prints adam
print(person["age"]) --prints 18

--setting values
person.isMale = true
person["isAwesome"] = true

--tables become more powerful later and add to our multi-paradigm point about lua