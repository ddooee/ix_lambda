SKILL.name = "움직임"
SKILL.description = "달리는 동안 체력이 얼마나 소모되는지, 속도를 결정하는 기술"
SKILL.category = 3

ix.action:Register("athleticsRun", "athletics", {
	name = "달리기",
	noLogging = true,
	experience = function(action, character, skill, value)
		return value
	end
})

local function CalcAthleticsSpeed(athletics)
	return 1 + (athletics * 0.1) * 0.25
end

function SKILL:OnLevelUp(client, character)
	client:SetRunSpeed(ix.config.Get("runSpeed") * CalcAthleticsSpeed(character:GetSkillModified("athletics")))
end
