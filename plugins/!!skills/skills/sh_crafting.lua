SKILL.name = "제작"
SKILL.description = "도공마을 가고싶어요"
SKILL.category = 4

function SKILL:GetRequiredXP(skills, level)
	return math.ceil(250 * (level ^ 1.3) + 75)
end

ix.action:Register("craft_crafting", "crafting", {
	name = "제작",
	experience = function(action, character, skill, price)
		return price
	end
})