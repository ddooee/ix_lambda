ITEM.name = "의료용 마스크"
ITEM.model = "models/cellar/items/surgerymask.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.description = "이 마스크를 사용하면 온갖 먼지와 먼지로부터 입과 코를 가릴 수 있지만 이 마스크의 핵심은 질병이 퍼지는 것을 막는 것입니다."
ITEM.slot = EQUIP_MASK
ITEM.bodyGroups = {
	[2] = 1,
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