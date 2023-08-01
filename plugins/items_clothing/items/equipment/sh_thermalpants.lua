ITEM.name = "단열 바지"
ITEM.model = "models/cellar/items/city3/clothing/pants_03.mdl"
ITEM.width = 2 -- ширина
ITEM.height = 2 -- высота
ITEM.description = "언뜻 보기에는 평범한 청바지이고 별거 아닌 것 같지만, 제대로 입거나 열어보니 홈메이드 다운 인서트로 보온 처리가 되어 있어서 꽤 따뜻합니다."
ITEM.slot = EQUIP_LEGS -- слот ( EQUIP_MASK EQUIP_HEAD EQUIP_LEGS EQUIP_HANDS EQUIP_TORSO )
ITEM.bodyGroups = { -- какие бодигруппы на какие сетаются
    [7] = 2,
}
ITEM.CanBreakDown = true -- можно ли порвать на тряпки
ITEM.thermalIsolation = 4 -- (от 1 до 4)