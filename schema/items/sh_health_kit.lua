
ITEM.name = "치료키트"
ITEM.model = Model("models/items/healthkit.mdl")
ITEM.description = "각종 의료 도구로 구성된 하얀색의 패키지입니다."
ITEM.category = "의학"
ITEM.price = 65

ITEM.functions.Apply = {
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 60, 100))
	end
}
