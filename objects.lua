--ADVANCED
--Lua is not a traditional OOP language, it doesn't have classes, it has tables

--Lets begin by creating an empty table
local person = {}

--This person will be our object or our class

person.name = "Harry"
person.age = 19
person.height = 176

person.startRunning = function()
    --Do some running here
end

--Wait what? Because functions are objects, they can be added to tables like any other variable

--So what a table can be transformed into is an object with fields and functions

--This still isn't truly OOP though is it? I mean where are our access modifiers (Private, Public, Protected etc)

--** This object also doesn't have a sense of self yet... I.e. that function up there (startRunning) doesn't know anything about the table it's in **

--Let's construct a person in a more complex way
function newPerson(name, age, height)
    
    local person = {}
    
    --Instead of adding name to our table, instead lets just create a function that allows someone to "get" the name
    person.getName = function()
        return name
    end
    
    person.getAge = function()
        return age
    end
    
    --alternate way of writing the previous two functions
    function person.getHeight()
        return height
    end
    
    --We can also modify variables that are out of scope
    person.growOlder = function()
        age = age + 1 --Sorry, no ++ increment operator in Lua
    end

    --let's make give our person more data that isn't passed to the "constructor"
    person.energy = 100
    
    --our person now has energy and can grow tired... Because we have placed this in our person table this will make it accessible to anyone
    --who has that person table. Doing this essentially creates a "public" variable
    
    --Now lets create a method for jogging
    function person:goJogging()
        self.energy = self.energy - 10
    end
    
    --Notice anything different? Yeah, I used a colon instead of a dot... Why?
    --The answer will come in a minute, first look at the next example to see what's different
    
    function person.goWalking(self)
        self.energy = self.energy - 5
    end
    
    --In the second scenario we had to declare a parameter self, in the first we did not.
    --By using a colon, the function passes a variable which is in fact a reference to the table.
    --I previously said that the function doesn't know anything about the table it's in...
    --Well by using the colon operator you give it a reference to the table it's in and thus allow it to do stuff to the data in that table
   
    --finally, let's say we want a private variable that's not given in the constructor, we can simply declare it within the constructor function
   
    local weight = 300 --Pounds
   
    function person.getLieAboutWeight()
        return weight - (weight / 2) 
        --we can get away with half right??
    end
   
    return person
    --So we've constructed a new person here, let's give this new person back to whoever asked for it
    
end