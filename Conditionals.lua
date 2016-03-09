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

