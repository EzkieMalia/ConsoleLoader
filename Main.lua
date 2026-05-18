queue_on_teleport([[
    game:GetService("ScriptContext"):SetTimeout(.5)
    if (game.PlaceId == 10179538382) then
        getgenv().BypassFirstServer = true
        script_key=readfile("6XSouthBronxKey.txt");
        loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/7d75d185a82b2e127255c59aba87d6c6.lua"))()
        repeat task.wait() until getgenv().BypassedFirstServer == true
        local __OldNamecall = nil
        __OldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
            local Method = getnamecallmethod()
            if (Method == "IsTenFootInterface") then
                return true
            end
            if (Method ~= "FireServer") then
                return task.wait(9e9)
            end
            return __OldNamecall(self, ...)
        end))
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EzkieMalia/ConsoleLoader/refs/heads/main/Main.lua"))()
    elseif (game.PlaceId == 13643807539) then
        repeat task.wait() until not game.ReplicatedFirst:FindFirstChild("Intro")
        game:GetService("ScriptContext"):SetTimeout(9e9)
    end
]])
