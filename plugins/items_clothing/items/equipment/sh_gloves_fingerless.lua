ITEM.name = "벙어리 장갑"
ITEM.model = "models/cmbfdr/items/gloves.mdl"
ITEM.width = 1 -- ширина
ITEM.height = 1 -- высота
ITEM.description = "손가락이 없는 좋은 장갑은 도시 환경을 따뜻하게 하는 데 도움이 될 것입니다."
ITEM.slot = EQUIP_HANDS -- слот ( EQUIP_MASK EQUIP_HEAD EQUIP_LEGS EQUIP_HANDS EQUIP_TORSO )
ITEM.bodyGroups = { -- какие бодигруппы на какие сетаются
    [6] = 2,
}
ITEM.CanBreakDown = true -- можно ли порвать на тряпки
ITEM.thermalIsolation = 3 -- (от 1 до 4)