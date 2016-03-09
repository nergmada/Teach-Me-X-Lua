--We have four kids, two are telling the truth and two are lying
local Alice = true
local Bob = true
local Charlie = false
local Dylan = false

--if alice is telling the truth then
if Alice then --(if true then)
    --Do stuff is alice is telling the truth 
end

--if charlie is not telling the truth
if not Charlie then -- (if not true then)
    --Do stuff if Charlie is lying
end

--if alice or dylan are telling the truth
if Alice or Dylan then
    --do stuff if alice or dylan are telling the truth
end

--If Alice and Bob are telling the truth
if Alice and Bob then
    --do stuff if alice and bob are telling the truth
end

--if Alice or Bob are telling the truth, and Dylan are telling the truth 
if (Alice or Bob) and Dylan then
    --Do stuff if Alice or Bob are telling the truth, and Dylan are telling the truth
end

--etc... can build lovely complex logic really easily

--But we can do other comparisons as well

local stevesAge = 14
local billsAge = 19

--If stevesAge is over 18 then 
if stevesAge > 18 then
    --Let him into nightclub
end

--But steve can go into a nightclub if he's 18 or over so it should be
if stevesAge >= 18 then
    --let him into nightclub
end

--if steve is under 18
if stevesAge < 18 then
    --tell him to get lost
end

--if billsAge is equal to 19
if billsAge == 19 then
    --you won't be a teenager soon
end


--You can also use else to handle what to do if the condition is not true
--if bill is not 16 
if billsAge ~= 16 then
    --You can't have a sweet 16 party
else
    --You can but do you really want one?
end

--You can also compare two variables using all of the above operators
if billsAge == stevesAge then

end

--You can also mix these with the and, or, not operators we saw earlier
if (billsAge == stevesAge) or (billsAge == stevesAge + 1) then
    --if bill and steve are the same age or bill is one year older
end

if not (billsAge == stevesAge) then
    --if bills age does not equal steves age
end

--NB Brackets control order of "evaluation" i.e. the inner most brackets are compared first moving outwards


--Finally for more complex conditions we also have elseif

if billsAge == 18 then
--he's 18
elseif billsAge == 20 then
--he's 20
elseif billsAge == 21 then
--he's 21
elseif billsAge == 22 then
--he's 22
elseif billsAge == 23 then
--he's 23
elseif billsAge == 24 then
--he's 24
end

-- you can also finish an if ... elseif conditional with an else


if billsAge == 18 then
--he's 18
elseif billsAge == 20 then
--he's 20
elseif billsAge == 21 then
--he's 21
elseif billsAge == 22 then
--he's 22
elseif billsAge == 23 then
--he's 23
elseif billsAge == 24 then
--he's 24
else
--I don't know what bloody age he is
end