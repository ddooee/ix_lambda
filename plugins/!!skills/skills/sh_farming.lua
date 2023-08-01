SKILL.name = "농사"
SKILL.description = "스타듀밸리"
SKILL.category = 4

function SKILL:GetRequiredXP(skills, level)
	return math.ceil(75 * (level ^ 1.525) + 100)
end

ix.action:Register("farmingWater", "farming", {
	name = "물 주기",
	experience = 28
})

ix.action:Register("farmingPlant", "farming", {
	name = "씨앗 재배",
	experience = 35
})

ix.action:Register("farmingHarvest", "farming", {
	name = "수확",
	experience = 20
})