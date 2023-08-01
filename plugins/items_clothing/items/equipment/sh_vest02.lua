ITEM.name = "L2 방탄복"
ITEM.model = "models/cellar/items/city3/clothing/refuge_molle.mdl"
ITEM.width = 3 -- ширина
ITEM.height = 2 -- высота
ITEM.description = "G-1 방탄복의 개량형인 G-2 방탄복입니다. 방탄 성능이 조금이나마 상향되었습니다."
ITEM.slot = EQUIP_TORSO -- слот ( EQUIP_MASK EQUIP_HEAD EQUIP_LEGS EQUIP_HANDS EQUIP_TORSO )
ITEM.bodyGroups = { -- какие бодигруппы на какие сетаются
	[5] = 13,
}
ITEM.CanBreakDown = false -- можно ли порвать на тряпки
ITEM.thermalIsolation = 2 -- (от 1 до 4)
ITEM.Stats = {
	[HITGROUP_GENERIC] = 0,
	[HITGROUP_HEAD] = 0,
	[HITGROUP_CHEST] = 15,
	[HITGROUP_STOMACH] = 7,
	[4] = 0,
	[5] = 0,
}