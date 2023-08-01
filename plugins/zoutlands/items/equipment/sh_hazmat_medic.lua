ITEM.name = "의료용 화학 보호복"
ITEM.description = "의료용으로 설계된 파란색 화학 보호복입니다. 작동 버전과 달리 가스 마스크의 여과는 유해한 증기의 유입을 방지할 뿐만 아니라 생물학적 위협으로부터 보호하는 데에도 도움이 됩니다. 그런 옷을 입고 숨쉬는 것은 매우 답답하고 어렵지만 질병이 당신을 건드리지 않을 것이라는 확신은 여전히 매우 높습니다."
ITEM.model = "models/props_c17/SuitCase001a.mdl"
ITEM.slot = EQUIP_TORSO
ITEM.isOutfit = true
ITEM.width = 2
ITEM.height = 2
ITEM.CanBreakDown = false
ITEM.genderReplacement = {
	[GENDER_MALE] = "models/cellar/characters/hazmat/medic_male.mdl",
	[GENDER_FEMALE] = "models/cellar/characters/hazmat/medic_female.mdl"
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
