-- Doesn't need anti cheat bypass, after executing u must reset ur character otherwise it wont affect anything

for Index, Data in next, getgc(true) do
    if type(Data) == "table" and rawget(Data, "XIIX") then
        local old; old = hookfunction(getproto(Data.XIIX, 29, true)[1], function(...)
            local args = (...)

            if args == "Emotes" then
                return true
            end

            return old(...)
        end)
    end
end
