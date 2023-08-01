SKILL.name = "의학"
SKILL.description = "의약품의 적용 속도를 결정하는 기술"
SKILL.category = 4

local function GetHealFactor(data)
	local factor = 0

	if data.bleed then
		factor = factor + (data.bleedDmg or 0) * 0.01
	end

	if data.blood then
		factor = factor + (data.blood or 0) * 0.0005
	end

	if data.unconscious then
		factor = factor + 0.1
	end

	if data.pain then
		factor = factor + 0.25
	end

	if data.limbs then
		factor = factor + (data.limbs or 0) * 0.01
	end

	if data.shock then
		factor = factor + (data.shock or 0) * 0.0005
	end

	if data.rad then
		factor = factor + (data.rad or 0) * 0.001
	end

	return factor
end

ix.action:Register("healing", "medicine", {
	name = "자가 치료",
	experience = function(action, character, skill, data)
		return 10 * GetHealFactor(data)
	end
})

ix.action:Register("healingTarget", "medicine", {
	name = "대상 치료",
	experience = function(action, character, skill, data)
		return 15 * GetHealFactor(data)
	end
})

ix.action:Register("craft_medicine", "medicine", {
	name = "의약품 제조",
	experience = function(action, character, skill, price)
		return price
	end
})