local ix = ix

ix.quickmenu = {}
ix.quickmenu.stored = {}


function ix.quickmenu:AddCallback(name, icon, callback, shouldShow)
	self.stored[#ix.quickmenu.stored+1] = {
		shouldShow = shouldShow,
		callback = callback,
		name = name,
		icon = icon
	};
end;

ix.quickmenu:AddCallback("설명 변경", "icon16/note_edit.png", function()
	ix.command.Send("CharDesc")
end)

ix.quickmenu:AddCallback("스크랩 드랍", "icon16/money_delete.png", function()
	local description = string.format("드랍할 스크랩 갯수 입력 (현재 갯수: %s)", LocalPlayer():GetCharacter():GetMoney())

	Derma_StringRequest("스크랩 드랍", description, 20, function(text)
		ix.command.Send("DropTokens", text)
	end, nil, "떨구기", "취소")
end)

ix.quickmenu:AddCallback("넘어지기", "icon16/user.png", function()
	Derma_StringRequest("넘어지기", "Введите время (от 5 до 60 секунд).", 5, function(text)
		ix.command.Send("CharFallOver", math.Clamp(tonumber(text) or 60, 60, 120))
	end, nil, "넘어지기", "취소")
end)

ix.quickmenu:AddCallback("캐릭터 기분 설정", "icon16/user.png", function()
	local menu = DermaMenu()
	local moods = ix.plugin.list["emotemoods"].MoodTextTable
	for i = 1, 4 do
		menu:AddOption(L(moods[i - 1]), function()
			ix.command.Send("CharSetMood", i - 1)
		end)
	end
	menu:Open()
end)
