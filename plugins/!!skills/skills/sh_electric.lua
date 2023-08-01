SKILL.name = "전자공학"
SKILL.description = "다양한 전자제품을 분해하고 만들 수 있는 기술"
SKILL.category = 4

function SKILL:GetRequiredXP(skills, level)
	return math.ceil(75 * (level ^ 1.55) + 100)
end

ix.action:Register("craft_electric", "electric", {
	name = "전자공학",
	experience = function(action, character, skill, price)
		return price
	end
})