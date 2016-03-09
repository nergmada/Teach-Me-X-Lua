--functions are incredibly flexible in lua, but also cause lots of problems

--declaring a function
function addTwoNumbers(a, b) -- tell it it's a function, give the function a name and give the function parameters
    return a + b
end
print(addTwoNumbers(1, 2)) --prints 3

--declare a function as a variable

local subtractTwoNumbers = function(a, b)
    return a - b
end

print(subtractTwoNumbers(2, 1)) -- prints 1 (2 - 1)


--declare a function that handles parameters being nil

function addTwoNumbersOrReturnNil(a, b)
    if a == nil or b == nil then
        return nil
    end
    return a + b
end

print(addTwoNumbersOrReturnNil(3, 4)) -- prints 7
print(addTwoNumbersOrReturnNil()) -- prints nil

--Why? All parameters in lua are optional. To call a function you do not have to give it a vatiable for each
--This makes it harder to debug as a problem may not occur until you try to use those parameters in your function later eg.

--uncomment this and see what line it throws an error on
--print(addTwoNumbers(1)) -- should crash

--we should check that our parameters aren't nil (like in addTwoNumbersOrReturnNil) so that our functions don't crash unexpectedly
