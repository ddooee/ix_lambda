ITEM.name = "신인류 감시부대 방탄복"
ITEM.model = "models/cellar/items/city3/clothing/combine_armor_vest.mdl"
ITEM.width = 3 -- ширина
ITEM.height = 3 -- высота
ITEM.description = "신인류 감시부대로부터 약탈한 방탄복입니다. 매우 무거운 무게를 지녔지만 대부분의 공격을 막을 수 있습니다."
ITEM.slot = EQUIP_TORSO -- слот ( EQUIP_MASK EQUIP_HEAD EQUIP_LEGS EQUIP_HANDS EQUIP_TORSO )
ITEM.bodyGroups = { -- какие бодигруппы на какие сетаются
	[5] = 14,
}
ITEM.CanBreakDown = false -- можно ли порвать на тряпки
ITEM.thermalIsolation = 2 -- (от 1 до 4)
ITEM.Stats = {
	[HITGROUP_GENERIC] = 0,
	[HITGROUP_HEAD] = 0,
	[HITGROUP_CHEST] = 25,
	[HITGROUP_STOMACH] = 10,
	[4] = 0,
	[5] = 0,
}