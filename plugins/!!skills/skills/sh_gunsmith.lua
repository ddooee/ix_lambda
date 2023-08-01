SKILL.name = "화기 제조"
SKILL.description = "도공마을 출발"
SKILL.category = 4

function SKILL:GetRequiredXP(skills, level)
	return math.ceil(200 * (level ^ 1.875) + 200)
end

ix.action:Register("craft_gunsmith", "gunsmith", {
	name = "제작",
	experience = function(action, character, skill, price)
		return price
	end
})