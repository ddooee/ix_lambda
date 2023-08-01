ITEM.name = "손전등"
ITEM.model = Model("models/lagmite/lagmite.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "앞을 비춰주는 손전등입니다."
ITEM.category = "categoryTools"

ITEM:Hook("drop", function(item)
	item.player:Flashlight(false)
end)
