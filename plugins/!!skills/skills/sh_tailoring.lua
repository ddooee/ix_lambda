SKILL.name = "재단사"
SKILL.description = "옷만들기"
SKILL.category = 4

function SKILL:GetRequiredXP(skills, level)
	return math.ceil(75 * (level ^ 1.525) + 100)
end

ix.action:Register("craft_tailoring", "tailoring", {
	name = "옷만들기",
	experience = function(action, character, skill, price)
		return price
	end
})