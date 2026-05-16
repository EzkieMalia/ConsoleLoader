queue_on_teleport([[
    if (game.PlaceId == 10179538382) then
        game:GetService("ScriptContext"):SetTimeout(.5)
        local __OldNamecall = nil
        __OldNamecall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
            local Method = getnamecallmethod()
            if (Method == "IsTenFootInterface") then
                return true
            end
            if (Method == "InvokeServer" and tostring(self) ~= "GetInitDataRequest") then
                return task.wait(9e9)
            end
            return __OldNamecall(self, ...)
        end))
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EzkieMalia/ConsoleLoader/refs/heads/main/Main.lua"))()
    elseif (game.PlaceId == 13643807539) then
        game:GetService("ScriptContext"):SetTimeout(.5)
        repeat task.wait() until not game.ReplicatedFirst:FindFirstChild("Intro")
        game:GetService("ScriptContext"):SetTimeout(9e9)
    end
]])
