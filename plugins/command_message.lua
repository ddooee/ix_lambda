PLUGIN.name = "Command Message display"
PLUGIN.author = "fallen"
PLUGIN.desc = "Display the Command Message"

if (SERVER) then
    util.AddNetworkString("ixCommandMessage")

    ix.command.Add("cm", {
        description = "커맨드메시지 출력",
        arguments = ix.type.text,
        OnRun = function(self, client, text)
            net.Start("ixCommandMessage")
            net.WriteString(text)
            net.Send(player.GetAll())
        end
    })
else
    local MESSAGE = {}
	local client = LocalPlayer()
    local character = client:GetCharacter()

    net.Receive("ixCommandMessage", function()
		if client:IsCombine() then
			LocalPlayer():EmitSound("awhl2rp/ui/pt_joined.wav")
			MESSAGE = {
				start = CurTime(),
				duration = 10,
				title = "***PRIORITY TRANSMISSION***",
				text = net.ReadString(),
				typewriter = true
			}
		end
    end)

    hook.Add("HUDPaint", "ixCommandMessage", function()
		if client:IsCombine() then
			-- 씨발좇같네왜안됨
			if (MESSAGE.text == nil) then
				return
			end

			local lengthTitle = string.len(MESSAGE.title)
			local lengthText = string.len(MESSAGE.text)

			if (MESSAGE.typewriter) then
				target = math.ceil((CurTime() - MESSAGE.start) / 0.05)
				if (target > lengthTitle + lengthText) then
					MESSAGE.typewriter = false
				end
			else
				target = lengthTitle + lengthText
			end

			start = math.max(0, target - 40)

			if (target <= lengthTitle) then
				draw.SimpleText(string.sub(MESSAGE.title, start + 2, target), "cm_receive", ScrW() * 0.5, ScrH() * 0.4 - 16, Color(51, 204, 51), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
			else
				draw.SimpleText(MESSAGE.title, "cm_receive", ScrW() * 0.5, ScrH() * 0.4 - 16, Color(51, 204, 51), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
				if (not MESSAGE.typewriter and CurTime() - MESSAGE.start >= 3) then
					local subText = MESSAGE.text
					local lines = math.ceil(string.len(subText) / 25)
					local startY = ScrH() * 0.45 - (lines - 1) * 12.5
					local font = "cm_second"
					surface.SetFont(font)
					local textWidth, textHeight = surface.GetTextSize(subText)
					local lineHeight = textHeight + 2
					local y = startY
					for i = 1, lines do
						local startIndex = (i - 1) * 25 + 1
						local endIndex = i * 25
						local lineText = string.sub(subText, startIndex, endIndex)
						local lineWidth, _ = surface.GetTextSize(lineText)
						local x = ScrW() * 0.5 - lineWidth * 0.5
						draw.DrawText(lineText, font, x, y, Color(255, 255, 255), TEXT_ALIGN_LEFT)
						y = y + lineHeight
					end
				end
			end

			-- 일정 시간이 지나면 메시지 제거
			if (CurTime() - MESSAGE.start >= MESSAGE.duration) then
				MESSAGE.text = nil
			end
		end
    end)
end

surface.CreateFont(
    "cm_receive",
    {
        font = "NanumBarunGothic",
        extended = true,
        size = 45,
        weight = 100,
        antialias = true,
        shadow = false,
        outline = true,
        scanlines = 2
    }
)

surface.CreateFont(
    "cm_second",
    {
        font = "NanumBarunGothic",
        extended = true,
        size = 30,
        weight = 100,
        antialias = true,
        outline = true,
        blursize = 0, -- Add this line
        scanlines = 2, -- Add this line
        outline = true -- Remove the previous "outline" line
    }
)
