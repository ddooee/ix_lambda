ITEM.name = "FPA 보호 유니폼"
ITEM.description = "짙은 녹색의 단단한 고무로 만든 작업복이며 몸통과 가슴에서 다리까지 납으로 된 앞치마로 보호됩니다. 신발 베레모에서. 유니폼은 유전 효과 및 내화성을 포함하는 기능인 극한 조건을 위해 설계되었습니다. 그러한 소송에서 방사선의 영향은 일반 민간인보다 몇 배나 낮습니다. 키트에는 MAG-3L의 전면부가 있는 GP-9가 포함되어 있습니다."
ITEM.model = "models/props_c17/SuitCase001a.mdl"
ITEM.slot = EQUIP_TORSO
ITEM.isOutfit = true
ITEM.width = 2
ITEM.height = 2
ITEM.CanBreakDown = false
ITEM.genderReplacement = {
	[GENDER_MALE] = "models/vintagethief/hazmat_worker.mdl",
	[GENDER_FEMALE] = "models/vintagethief/hazmat_worker.mdl"
}
ITEM.Stats = {
	[HITGROUP_GENERIC] = 0,
	[HITGROUP_HEAD] = 2,
	[HITGROUP_CHEST] = 5,
	[HITGROUP_STOMACH] = 5,
	[4] = 3, -- hands
	[5] = 3, -- legs
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
