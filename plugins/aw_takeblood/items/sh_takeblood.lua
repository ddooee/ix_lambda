local PLUGIN = PLUGIN

ITEM.name = "혈액 주머니"
ITEM.description = "주머니에 붙어있는 정보표를 통해 누구의 피인지 알 수 있습니다."
ITEM.model = "models/props_rpd/medical_blood.mdl"
ITEM.category = "categoryMedical"

ITEM.functions.TakeHimBlood = {
	name = "대상 수혈",

	OnRun = function(item)
		PLUGIN:TakeBlood(item,true)
		return false
	end,

	OnCanRun = function(item)
		local ent = item.player:GetEyeTraceNoCursor().Entity
		return !item.entity and IsValid(ent) and ent:IsPlayer()
	end
}

ITEM.functions.TakeMyBlood = {
	name = "자가 수혈",

	OnRun = function(item)
		PLUGIN:TakeBlood(item)
		return false
	end,

	OnCanRun = function(item)
		return !item.entity
	end
}