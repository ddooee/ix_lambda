SKILL.name = "곡예"
SKILL.description = "점프의 힘을 결정하는 기술"
SKILL.category = 3

ix.action:Register("jump", "acrobatics", {
	name = "점프력",
	noLogging = true,
	experience = {
		{level = 0, xp = 2},
		{level = 3, xp = 1},
	}
})

function SKILL:OnLevelUp(client, character)
	client:SetJumpPower(160 * (1 + math.min(math.Remap(character:GetSkillModified("acrobatics"), 0, 10, 0, 0.75), 0.75)))
end