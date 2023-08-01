-- "gamemodes\\ixhl2rp\\plugins\\displaychat.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

local PLUGIN = PLUGIN

PLUGIN.name = "Display Chat Messages"
PLUGIN.description = "Displays what other characters saying above their heads (toggleable)."
PLUGIN.author = "AleXXX_007 & Aspect™"
PLUGIN.version = 1.2

ix.option.Add("chatDisplayEnabled", ix.type.bool, true, {
	category = "채팅 디스플레이"
})

ix.option.Add("chatDisplayLength", ix.type.number, 256, {
	category = "채팅 디스플레이",
	min = 10, max = 2048
})

ix.option.Add("chatDisplayDurationPerSymbol", ix.type.number, 0.3, {
	category = "채팅 디스플레이",
	min = 0.01, max = 1, decimals = 2
})

ix.option.Add("chatDisplayOwnDisplayEnabled", ix.type.bool, true, {
	category = "채팅 디스플레이"
})

ix.command.Add("StaticCharActionSet", {
	description = "@staticCharActionSet",
	arguments = ix.type.text,
	OnRun = function(self, client, action)
		if (#action > 255) then
			return "@staticCharActionSetTooLong"
		end

		client:SetNetVar("staticAction", action)
		client:Notify("캐릭터의 정적 상태를 설정했습니다.")
	end
})

ix.command.Add("StaticCharActionRemove", {
	description = "@staticCharActionRemove",
	OnRun = function(self, client)
		client:SetNetVar("staticAction", nil)
		client:Notify("캐릭터의 정적 상태를 제거했습니다.")
	end
})

ix.lang.AddTable("korean", {
	optChatDisplayEnabled = "대화 텍스트 활성화",
	optdChatDisplayEnabled = "캐릭터가 말할 때 캐릭터 머리 위에 채팅을 보이게 합니다.",
	optChatDisplayLength = "최대 대화 텍스트 길이",
	optdChatDisplayLength = "최대 표시 가능한 대화 표시 길이를 설정합니다.",
	optChatDisplayDurationPerSymbol = "대화 텍스트 유지 시간",
	optdChatDisplayDurationPerSymbol = "캐릭터 머리 위에 출력되는 채팅의 유지 시간을 설정합니다.",
	optChatDisplayOwnDisplayEnabled = "자신의 대화 텍스트 활성화",
	optdChatDisplayOwnDisplayEnabled = "캐릭터 자신의 채팅이 머리 위에 나타나게 합니다.",
	staticCharActionSet = "캐릭터 머리 위에 텍스트를 유지합니다.",
	staticCharActionRemove = "캐릭터 머리 위 텍스트를 제거합니다.",
	staticCharActionSetTooLong = "머리 위 텍스트는 최대 255자를 초과할 수 없습니다.",
})

ix.lang.AddTable("english", {
	optChatDisplayEnabled = "Enable chat display",
	optdChatDisplayEnabled = "Whether text should appear above characters' heads when they speak.",
	optChatDisplayLength = "Max chat display length",
	optdChatDisplayLength = "The maximum length of the chat display.",
	optChatDisplayDurationPerSymbol = "Display duration per text character",
	optdChatDisplayDurationPerSymbol = "How many seconds the chat should be displayed for per text character.",
	optChatDisplayOwnDisplayEnabled = "Display own messages",
	optdChatDisplayOwnDisplayEnabled = "Whether your own messages should appear above your head.",
	staticCharActionSet = "Set your character's static action",
	staticCharActionRemove = "Remove your character's static action.",
	staticCharActionSetTooLong = "Your character's static action cannot be longer than 255 characters!",
})

function PLUGIN:PlayerLoadedCharacter(client)
	client:SetNetVar("staticAction", nil)
end

if (SERVER) then return end

local stored = PLUGIN.chatDisplay or {}
PLUGIN.chatDisplay = stored

function PLUGIN:MessageReceived(client, messageInfo)
	if (IsValid(client) and ix.option.Get("chatDisplayEnabled", false)) then
		if (client == LocalPlayer() and !ix.option.Get("chatDisplayOwnDisplayEnabled", true)) then return end

		if (hook.Run("ShouldChatMessageDisplay", client, messageInfo) != false) then
			local class = ix.chat.classes[messageInfo.chatType]
			local maxLen = ix.option.Get("chatDisplayLength")
			local text = messageInfo.text

			if (class.langID) then
				local language = ix.languages:FindByID(class.langID)

				if (!language:PlayerCanSpeakLanguage(LocalPlayer())) then
					text = "(알아들을 수 없는 "..language.name..")"
				end
			end

			local textLen = string.utf8len(text)
			local duration = math.max(2, math.min(textLen, maxLen) * ix.option.Get("chatDisplayDurationPerSymbol"))
			
			stored[client] = {
				text = textLen > maxLen and utf8.sub(text, 1, ix.option.Get("chatDisplayLength")).."..." or text,
				color = class and class.color or color_white,
				fadeTime = duration
			}
		end
	end
end

local whitelist = {
	["overwatch_radio"] = true,
	["request"] = true,
	["radio"] = true,
	["meL"] = true,
	["meC"] = true,
	["meD"] = true,
	["ic"] = true,
	["me"] = true,
	["w"] = true,
	["wd"] = true,
	["y"] = true,
	["roll"] = true
}

function PLUGIN:ShouldChatMessageDisplay(client, messageInfo)
	if (messageInfo.anonymous) then
		return false
	end

	local class = ix.chat.classes[messageInfo.chatType]

	if (!whitelist[messageInfo.chatType] and (!class or !class.langID)) then
		return false
	end

	if (LocalPlayer():EyePos():DistToSqr(client:EyePos()) >= 300 * 300) then
		return false
	end
end

function PLUGIN:HUDPaint()
	local client = LocalPlayer()
	local clientPos = client:EyePos()
	local scrW = ScrW()
	local cx, cy = scrW * 0.5, ScrH() * 0.5

	for _, player in ipairs(player.GetAll()) do
		local action = player:GetNetVar("staticAction")
		if (!action) then continue end
		if (stored[player]) then continue end

		local targetPos = hook.Run("GetTypingIndicatorPosition", player)
		local pos = targetPos:ToScreen()
		local distSqr = clientPos:DistToSqr(targetPos)
		
		if (distSqr > 300 * 300) then continue end

		local camMult = (1 - math.Distance(cx, cy, pos.x, pos.y) / scrW * 1.5)
		local distanceMult = (1 - distSqr * 0.003 * 0.003) -- 0.003 == 1/300
		local alpha = 255 * camMult * distanceMult
		local col1, col2 = Color(175, 255, 150, alpha), Color(0, 0, 0, alpha)
		local font = "ixGenericFont"

		surface.SetFont(font)

		local _, fullH = surface.GetTextSize(action)
		local lines = ix.util.WrapText(action, scrW * 0.25, font)
		local offset = 4
		local curY = pos.y - ((fullH + offset) * #lines) / 2

		for _, line in pairs(lines) do
			local width, height = surface.GetTextSize(line)

			draw.SimpleTextOutlined(line, font, pos.x - width / 2, curY, col1, nil, nil, 1, col2)

			curY = curY + height + offset
		end
	end
	
	if (ix.option.Get("chatDisplayEnabled", false) and stored and !table.IsEmpty(stored)) then
		local toRem = {}

		for k, v in pairs(stored) do
			if (IsValid(k)) then
				local targetPos = hook.Run("GetTypingIndicatorPosition", k)
				local pos = targetPos:ToScreen()
				local distSqr = clientPos:DistToSqr(targetPos)
				
				if (distSqr <= 300 * 300) then
					local camMult = (1 - math.Distance(cx, cy, pos.x, pos.y) / scrW * 1.5)
					local distanceMult = (1 - distSqr * 0.003 * 0.003) -- 0.003 == 1/300
					local alpha = 255 * camMult * distanceMult * math.min(v.fadeTime, 1)
					local col1, col2 = ColorAlpha(v.color, alpha), Color(0, 0, 0, alpha)
					local font = "ixGenericFont"

					surface.SetFont(font)

					local _, fullH = surface.GetTextSize(v.text)
					local lines = ix.util.WrapText(v.text, scrW * 0.25, font)
					local offset = 4
					local curY = pos.y - ((fullH + offset) * #lines) / 2

					for k1, v1 in pairs(lines) do
						local w, h = surface.GetTextSize(v1)

						draw.SimpleTextOutlined(v1, font, pos.x - w / 2, curY, col1, nil, nil, 1, col2)

						curY = curY + h + offset
					end

					v.fadeTime = v.fadeTime - FrameTime()

					if (v.fadeTime <= 0) then
						table.insert(toRem, k)
					end
				else
					table.insert(toRem, k)
				end
			else
				table.insert(toRem, k)
			end
		end

		for k, v in pairs(toRem) do
			stored[v] = nil
		end
	end
end
