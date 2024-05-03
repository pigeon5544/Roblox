-- anti crash (can change the table to any function u wanna hook in adonis if u want)

local funcs = {
    "GPUCrash",
    "Crash",
    "RAMCrash",
    "HardCrash",
    "Kill"
}

for Index, Data in next, getgc(true) do
    if typeof(Data) == "function" and table.find(funcs, debug.getinfo(Data).name) then
        hookfunction(Data, function()
            return wait(9e9)
        end)
    end
end


-- idk if this actually works but i theoretically it should lol