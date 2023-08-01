PLUGIN.name = "Any timers"
PLUGIN.author = "Junk"
PLUGIN.description = ""

if CLIENT then
    local text, time
    local function getFomatted(time)
        local m, s
        m = math.floor(time / 60) % 60
        s = math.floor(time) % 60

        return string.format('%02i:%02i', m, s)
    end

    function PLUGIN:HUDPaint()
        if text == nil or time == nil then return end

        ix.util.DrawText(text .. " 까지 " .. getFomatted(time), ScrW()/2, ScrH()*0.98, color_white, 1, 1, "ixBigFont")
    end

    netstream.Hook("timerCreate", function(file, newtext, newtime)
        time = newtime
        text = newtext

        if timer.Exists("anytimers") then timer.Remove("anytimers") end
        timer.Create("anytimers", 1, newtime + 1, function()
            if time <= 0 then
                time = nil
                timer.Remove("anytimers")
                return
            end

            time = time - 1

            if time <= 5 then
                LocalPlayer():EmitSound("ui/buttonrollover.wav", 100, 200)
            end
        end)

        sound.PlayFile(file, "", function()
            return true
        end )
    end)
end

ix.command.Add("timerCreate", {
    description = "타이머 설정",
    superAdminOnly = true,
    arguments = {
        ix.type.string,
        ix.type.number
    },
    OnRun = function(self, client, text, time)
        for i, v in ipairs( player.GetAll() ) do
            netstream.Start(v, "timerCreate", "sound/buttons/combine_button3.wav", text, time)
        end
    end
})

ix.command.Add("roundend", {
    description = "2분 50초(170초)로 설정하십시오.",
    superAdminOnly = true,
    arguments = {
        ix.type.string,
        ix.type.number
    },
    OnRun = function(self, client, text, time)
        for i, v in ipairs( player.GetAll() ) do
			client:EmitSound("pvp/round_end.mp3")
            netstream.Start(v, "timerCreate", "sound/buttons/combine_button3.wav", text, time)
			timer.Simple(170, function()
				LaunchGameOver_exfil()
			end)
        end
    end
})

ix.command.Add("shangus", {
    description = "테스트5초용",
    superAdminOnly = true,
    arguments = {
        ix.type.string,
        ix.type.number
    },
    OnRun = function(self, client, text, time)
        for i, v in ipairs( player.GetAll() ) do
			client:EmitSound("pvp/round_end.mp3")
            netstream.Start(v, "timerCreate", "sound/buttons/combine_button3.wav", text, time)
			timer.Simple(5, function()
				LaunchGameOver_exfil()
			end)
        end
    end
})