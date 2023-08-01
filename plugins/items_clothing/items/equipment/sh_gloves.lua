ITEM.name = "손장갑"
ITEM.model = "models/cmbfdr/items/gloves.mdl"
ITEM.width = 1 -- ширина
ITEM.height = 1 -- высота
ITEM.description = "엄지손가락에 꼭 맞는 커다란 고무장갑이 추운 도시에서 가장 추운 날씨에도 온기를 유지하도록 도와줍니다."
ITEM.slot = EQUIP_HANDS -- слот ( EQUIP_MASK EQUIP_HEAD EQUIP_LEGS EQUIP_HANDS EQUIP_TORSO )
ITEM.bodyGroups = { -- какие бодигруппы на какие сетаются
    [6] = 1,
}
ITEM.CanBreakDown = true -- можно ли порвать на тряпки
ITEM.thermalIsolation = 4 -- (от 1 до 4)