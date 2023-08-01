ITEM.name = "기동대 폭동 진압용 바이저"
ITEM.description = "도시 내의 소요사태를 진압하기위해 개발된 폭동 진압용 바이저입니다."
ITEM.model = Model("models/items/mask_03.mdl")
ITEM.rarity = 2
ITEM.bodyGroups = {
	[2] = 4
}
ITEM.Filters = {
	["filter_epic"] = true,
	["filter_good"] = true,
	["filter_medium"] = true,
	["filter_standard"] = false
}
ITEM.Stats = {
	[HITGROUP_GENERIC] = 0,
	[HITGROUP_HEAD] = 7,
	[HITGROUP_CHEST] = 0,
	[HITGROUP_STOMACH] = 0,
	[4] = 0,
	[5] = 0,
}
ITEM.WeaponSkillBuff = 3
ITEM.CPMask = true
ITEM.visorLevel = 2
ITEM.withOutfit = true