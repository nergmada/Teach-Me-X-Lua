--There are four types of loop in lua
local valueToReach = 10


--WHILE LOOPS
local i = 1
--this loop basically runs through the code inside it until i is no longer less than the value to reach 
while i < valueToReach do
    print(i) -- prints 1, 2, 3, 4, 5, 6, 7, 8, 9
    i = i + 1
end


--REPEAT UNTIL LOOPS
--similar to a while loop except a while loop may never execute as the condition is checked first, wherease the condition of a 
--repeat is checked last
i = 1
repeat
    print(i) --prints 1, 2, 3, 4, 5, 6, 7, 8, 9. 10
    i = i + 1
until (i > valueToReach)


--FOR LOOPS
--for loops, go from a start value to an end value specified like this for <variableName> = <startvalue>, <endvalue> do
for j = 1, valueToReach do
    print(j) --prints 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
end

--a for loop can also have a step specified if you want to it go by more than one i.e.
--jumps in steps of two
for j = 1, valueToReach, 2 do
    print(j) --prints 1, 3, 5, 7, 9
end

--or you can decrease as well
for j = valueToReach, 1, -1 do
    print(j) --prints 10, 9, 8, 7, 6, 5, 4, 3, 2, 1
end

--Lets create a table with the values 1 to 10 in it
local tableofNumbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

--we can loop through the table like so...
for _,a in pairs(tableofNumbers) do
    print(a)
end


--ADVANCED:
--Lets take a look at that last for loop again, so we know we can loop through the table using it, but why and how?

--I'm going to rename the values we use in it and see whether it helps you guess
for key, value in pairs(tableofNumbers) do
    print(value)
end

--A table can be thought of simply as a dictionary, in this instance our key is just our index and our value is the value in that index

--Take a look at this example, we've given each person a key (where they rank the class to be more specific)
local students = {bestStudent="Simon", worstStudent="Edward", mostMediocreStudent="Clara"}

for key, value in pairs(students) do
    print(key .. ": " .. value)
    --Not covered yet: We concatenate strings using two dots
end

--pairs(students) basically is a helper function to give you a result that can be iterated through in key, value form like above

--So why use an underscore for the key part in your first example adam?

--All we're saying is that we don't need this part. Although it still exists and can even be used as a variable it's a nice
--unobtrusive way of saying "I don't need this"
for _, value in pairs(tableofNumbers) do
    print(value)
end


--finally lets do one more thing
--notice something subtly different here? Of course you do!
--I've put an i in front of the pairs part
for key, value in ipairs(students) do
    print(key .. ": " .. value)
end

--what does it mean? How about I rename a variable and let you guess?
for index, value in ipairs(students) do
    print(index .. ": " .. value)
end

--ipairs gets all of the values in a table that have index associated with them (rather than a key), this allows you just to iterated
--through the numeric parts... If you've run the previous two ipair examples, you'll know it prints nothing

--now change your student table like this:
students = {bestStudent="Simon", worstStudent="Edward", mostMediocreStudent="Clara", 5, 10, 15, 20}

--This time you should see a result
for index, value in ipairs(students) do
    print(index .. ": " .. value)
end