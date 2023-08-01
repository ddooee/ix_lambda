ITEM.name = "안면 붕대"
ITEM.model = "models/cellar/items/city3/clothing/facewrap2.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.description = "당신의 얼굴에 생긴 흉물스런 상처를 가릴 수 있게 도와줍니다."
ITEM.slot = EQUIP_MASK
ITEM.bodyGroups = {
	[2] = 2,
}
ITEM.iconCam = {
	pos = Vector(0, 200, -0.49698188900948),
	ang = Angle(0, 270, 0),
	fov = 1.8941635831843,
}
ITEM.CanBreakDown = false

function ITEM:CanEquip(client, slot)
	local equipment = client:GetCharacter():GetEquipment()
	return !(equipment:HasItem("facial_bandage", {equip = true}))
end