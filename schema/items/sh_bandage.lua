
ITEM.name = "붕대"
ITEM.model = Model("models/items/bandage.mdl")
ITEM.description = "새것처럼 보이는 붕대입니다."
ITEM.category = "의학"
ITEM.price = 40

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 15, client:GetMaxHealth()))
	end
}
