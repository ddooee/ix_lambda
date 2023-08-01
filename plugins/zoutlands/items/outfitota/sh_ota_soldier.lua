ITEM.name = "신인류 감시부대 표준 전투복"
ITEM.description = "묵직한 방탄판으로 무장된 감시부대 표준 전투복입니다."
ITEM.genderReplacement = {
	[GENDER_MALE] = "models/combine_soldier_notr.mdl",
	[GENDER_FEMALE] = "models/combine_soldier_notr.mdl"
}
ITEM.Stats = {
	[HITGROUP_GENERIC] = 10,
	[HITGROUP_HEAD] = 14,
	[HITGROUP_CHEST] = 25,
	[HITGROUP_STOMACH] = 10,
	[4] = 10, -- hands
	[5] = 10, -- legs
}
ITEM.RadResist = 99.75
ITEM.primaryVisor = Vector(0.15, 0.8, 2)
ITEM.secondaryVisor = Vector(0.15, 0.8, 2)
ITEM.rarity = 2
ITEM.thermalIsolation = 4