ITEM.name = "기동대 지휘관 바이저"
ITEM.description = "유독가스 필터링 시스템을 갖춘 고급 기동대 바이저입니다."
ITEM.model = Model("models/items/mask_01.mdl")
ITEM.rarity = 2
ITEM.bodyGroups = {
	[2] = 2,
}
ITEM.Filters = {
	["filter_epic"] = false,
	["filter_good"] = true,
	["filter_medium"] = true,
	["filter_standard"] = false
}
ITEM.Stats = {
	[HITGROUP_GENERIC] = 0,
	[HITGROUP_HEAD] = 10,
	[HITGROUP_CHEST] = 0,
	[HITGROUP_STOMACH] = 0,
	[4] = 0,
	[5] = 0,
}
ITEM.CPMask = true
ITEM.visorLevel = 1
ITEM.withOutfit = true