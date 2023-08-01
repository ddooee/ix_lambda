ITEM.name = "표준 방호복"
ITEM.model = "models/props_c17/SuitCase_Passenger_Physics.mdl"
ITEM.width = 3 -- ширина
ITEM.height = 2 -- высота
ITEM.description = "엑소젠 감염, 다른 감염 또는 기타 이상 현상 등 특수한 조건에서 작업할 때 작업자가 사용하는 헐렁한 작업복입니다."
ITEM.slot = EQUIP_TORSO -- слот ( EQUIP_MASK EQUIP_HEAD EQUIP_LEGS EQUIP_HANDS EQUIP_TORSO )
ITEM.bodyGroups = { -- 	какие бодигруппы на какие сетаются
	[5] = 16,
	[7] = 4
}
ITEM.CanBreakDown = false -- можно ли порвать на тряпки
ITEM.thermalIsolation = 3 -- (от 1 до 4)

--запретить надевать если есть штаны на ногах иначе будет скрытый бафф момент, а также добавить термалку для ног сюда также на 3

function ITEM:CanTransferEquipment(oldinv, newinv, slot)
	if slot != self.slot then return false end
	return !(newinv:GetItemAtSlot(EQUIP_LEGS))
end