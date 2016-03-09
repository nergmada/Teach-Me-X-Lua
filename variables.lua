--variables are declared like this
name = "adam"
age = 18
friends = {"Lydia", "Joe", "Bee"}

--but variables are global by default so often we declare variables as "local"

local dogsName = "Kally"
local dogsAge = 7
local dogsFriends = {"pan"}

--But what does this mean?

function imDoingStuffWithX()
    x = 2
    return x * x
end

function imDoingOtherStuffWithX()
    x = 5
    return x * x
end

--these two can interfere with one another as they're both using X as a variable but they have no desire to interfere with one another

--Always use local unless you need a variable to be accessible across your entire program

--ADVANCED

--variables can be defined quickly on the same line by seperating them with commas
local x, y = 10, 20

print(x) -- 10
print(y) -- 20

--variables can be swapped simultaneously like shown below
x, y = y, x

print(x) -- 20
print(y) -- 10


local a = 30
--You don't have to use the same variables when doing multiple assignments
x, y = y, a

print(x) --10
print(y) --30
print(a) --30

y, x = a, y

print(y) --30
print(x) --30