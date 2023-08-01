ITEM.name = "노동용 화학 보호복"
ITEM.description = "Костюм химзащиты желтой окраски, созданный из самых необычных полимеров. В комплекте идет причудливый закругленный противогаз с возможностью подключения системы замкнутого дыхания, а также очень склизкие сапоги, которые довольно сильно сжимают вашу стопу, но при этом всем отлично защищают от попадания разного рода химикатов."
ITEM.model = "models/props_c17/SuitCase001a.mdl"
ITEM.slot = EQUIP_TORSO
ITEM.isOutfit = true
ITEM.width = 2
ITEM.height = 2
ITEM.CanBreakDown = false
ITEM.genderReplacement = {
	[GENDER_MALE] = "models/cellar/characters/hazmat/hazard_male.mdl",
	[GENDER_FEMALE] = "models/cellar/characters/hazmat/hazard_female.mdl"
}
ITEM.Stats = {
	[HITGROUP_GENERIC] = 0,
	[HITGROUP_HEAD] = 3,
	[HITGROUP_CHEST] = 2,
	[HITGROUP_STOMACH] = 2,
	[4] = 2, -- hands
	[5] = 2, -- legs
}
ITEM.RadResist = 99.75
ITEM.rarity = 2

if CLIENT then
	local stats = {
		[HITGROUP_GENERIC] = "보호",
		[HITGROUP_HEAD] = "머리",
		[HITGROUP_CHEST] = "흉부",
		[HITGROUP_STOMACH] = "복부",
		[4] = "팔", -- hands
		[5] = "다리", -- legs
	}

	local greenClr = Color(50, 200, 50)

	function ITEM:PopulateTooltip(tooltip)
		local uses = tooltip:AddRowAfter("rarity", "wear")
		uses:SetText(L("wearSlot", L("slot"..self.slot)))

		if self.RadResist then
			local s = tooltip:AddRow("radresist")
			s:SetTextColor(greenClr)
		    s:SetText(string.format("+%i%% 방사선 저항", self.RadResist))
			s:SizeToContents()
		end

		for i, v in ipairs(self.Stats) do
			if v == 0 then continue end

			local s = tooltip:AddRow("stat"..i)
			s:SetTextColor(greenClr)
		    s:SetText(string.format("+%i %s", v, stats[i]))
			s:SizeToContents()
		end
	end
end
