
ITEM.name = "치료젤"
ITEM.model = Model("models/healthvial.mdl")
ITEM.description = "초록색의 액체로 가득찬 치료젤입니다."
ITEM.category = "의학"
ITEM.price = 40

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 30, client:GetMaxHealth()))
	end
}
