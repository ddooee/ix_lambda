ITEM.name = "복합 요소 방호복"
ITEM.description = "오랜 세월에도 불구하고 준수한 질을 유지하여 보관되어온 방호복입니다."
ITEM.category = "에픽"
ITEM.model = "models/props_c17/SuitCase001a.mdl"
ITEM.slot = EQUIP_TORSO
ITEM.isOutfit = true
ITEM.width = 2
ITEM.height = 2
ITEM.CanBreakDown = false
ITEM.genderReplacement = {
	[GENDER_MALE] = "models/vintagethief/beres.mdl",
	[GENDER_FEMALE] = "models/vintagethief/beres.mdl"
}
ITEM.Stats = {
	[HITGROUP_GENERIC] = 20,
	[HITGROUP_HEAD] = 15,
	[HITGROUP_CHEST] = 20,
	[HITGROUP_STOMACH] = 15,
	[4] = 15, -- hands
	[5] = 15, -- legs
}
ITEM.RadResist = 100
ITEM.rarity = 4
ITEM.IsArmored = true

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

		if self.IsArmored then
			local s = tooltip:AddRow("dmgresist")
			s:SetTextColor(greenClr)
		    s:SetText(string.format("+%i%% к сопротивлению урона", 75))
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
