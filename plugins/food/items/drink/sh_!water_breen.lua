local langEn = {}
local langRu = {}
langEn["iBreenWater"] = "브린워터"
langRu["iBreenWater"] = "Вода Брина"
langEn["iBreenWaterDesc"] = "파란색 알류미늄 캔에 연합 로고가 새겨져 있습니다."
langRu["iBreenWaterDesc"] = "Алюминиевая банка голубого цвета с фирменным знаком Альянса на ней, если её встряхнуть можно услышать шипение газа."
langEn["iSmoothBreenWater"] = "부드러운 브린워터"
langRu["iSmoothBreenWater"] = "Ароматная вода Брина"
langEn["iSmoothBreenWaterDesc"] = "빨간색 알류미늄 캔에 연합 로고가 새겨져 있습니다. 목으로 넘어갈때 느낌이 부드러워졌습니다."
langRu["iSmoothBreenWaterDesc"] = "Алюминиевая банка красного цвета с фирменным знаком Альянса на ней, если её встряхнуть можно услышать шипение газа."
langEn["iSpecialBreenWater"] = "스페셜 브린워터"
langRu["iSpecialBreenWater"] = "Специальная вода Брина"
langEn["iSpecialBreenWaterDesc"] = "노란색 알류미늄 캔에 연합 로고가 새겨져 있습니다. 톡 쏘는 탄산수 느낌이 나며 캔에 흔들어 마시라는 문구가 새겨져 있습니다."
langRu["iSpecialBreenWaterDesc"] = "Алюминиевая банка жёлтого цвета с фирменным знаком Альянса на ней, если её встряхнуть можно услышать шипение газа."
-- watercollector water lang
langEn["iWCan"] = "탄산수"
langRu["iWCan"] = "Баночка с водой"
langEn["iWCanDesc"] = "인공적인 톡 쏘는 느낌이 포함되어있습니다."
langRu["iWCanDesc"] = "Старая баночка с набранной туда водой."
langEn["iWPB"] = "생수"
langRu["iWPB"] = "Пластиковая бутылка с водой"
langEn["iWPBDesc"] = "아무것도 없는 미지근한 물입니다."
langRu["iWPBDesc"] = "Старая пластиковая бутылка с набранной туда водой."
langEn["iWPJ"] = "물병"
langRu["iWPJ"] = "Пластиковая банка с водой"
langEn["iWPJDesc"] = "오래된 플라스틱 병에 물이 담겨져 있습니다."
langRu["iWPJDesc"] = "Старая пластиковая банка с набранной туда водой."
langEn["iWTC"] = "Tin can of water"
langRu["iWTC"] = "Консервная банка с водой"
langEn["iWTCDesc"] = "An old tin can with rain water inside of it."
langRu["iWTCDesc"] = "Старая консервная банка с набранной туда водой."
--watercollector items
local ITEM = ix.item.New2("base_drink")
	ITEM.name = "Can with Water"
	ITEM.PrintName = "iWCan"
	ITEM.description = "iWCanDesc"
	ITEM.model = "models/props_junk/popcan01a.mdl"
	ITEM.cost = 4
	ITEM.width = 1
	ITEM.height = 1
	ITEM.dUses = 5
	ITEM.dHunger = 0
	ITEM.dThirst = 10
	ITEM.dHealth = 0
	ITEM.junk = "empty_can"

	function ITEM:OnConsume(player)
		player:SetCharacterData("stamina", 100)
	end
ITEM:Register()

local ITEM = ix.item.New2("base_drink")
	ITEM.name = "Plastic Bottle of Water"
	ITEM.PrintName = "iWPB"
	ITEM.description = "iWPBDesc"
	ITEM.model = "models/props_junk/garbage_plasticbottle003a.mdl"
	ITEM.cost = 5
	ITEM.width = 1
	ITEM.height = 1
	ITEM.dUses = 5
	ITEM.dHunger = 0
	ITEM.dThirst = 12
	ITEM.dHealth = 0
	ITEM.junk = "empty_plastic_bottle"

	function ITEM:OnConsume(player)
		player:SetCharacterData("stamina", 100)
	end
ITEM:Register()

local ITEM = ix.item.New2("base_drink")
	ITEM.name = "Plastic Jar of Water"
	ITEM.PrintName = "iWPJ"
	ITEM.description = "iWPJDesc"
	ITEM.model = "models/props_lab/jar01b.mdl"
	ITEM.cost = 5
	ITEM.width = 1
	ITEM.height = 1
	ITEM.dUses = 5
	ITEM.dHunger = 0
	ITEM.dThirst = 12
	ITEM.dHealth = 0
	ITEM.junk = "empty_plastic_can"

	function ITEM:OnConsume(player)
		player:SetCharacterData("stamina", 100)
	end
ITEM:Register()

local ITEM = ix.item.New2("base_drink")
	ITEM.name = "Tin Can of Water"
	ITEM.PrintName = "iWTC"
	ITEM.description = "iWTCDesc"
	ITEM.model = "models/props_junk/garbage_metalcan001a.mdl"
	ITEM.cost = 4
	ITEM.width = 1
	ITEM.height = 1
	ITEM.dUses = 5
	ITEM.dHunger = 0
	ITEM.dThirst = 10
	ITEM.dHealth = 0
	ITEM.junk = "empty_tin_can"

	function ITEM:OnConsume(player)
		player:SetCharacterData("stamina", 100)
	end
ITEM:Register()
--watercollector items end

local ITEM = ix.item.New2("base_drink")
	ITEM.name = "Breen's Water"
	ITEM.PrintName = "iBreenWater"
	ITEM.description = "iBreenWaterDesc"
	ITEM.model = "models/props_junk/popcan01a.mdl"
	ITEM.cost = 4
	ITEM.width = 1
	ITEM.height = 1
	ITEM.dUses = 5
	ITEM.dHunger = 0
	ITEM.dThirst = 10
	ITEM.dHealth = 0
	ITEM.junk = "empty_can"

	function ITEM:OnConsume(player)
		player:SetCharacterData("stamina", 100)
	end
ITEM:Register()

local ITEM = ix.item.New2("base_drink")
	ITEM.name = "Smooth Breen's Water"
	ITEM.PrintName = "iSmoothBreenWater"
	ITEM.description = "iSmoothBreenWaterDesc"
	ITEM.model = "models/props_junk/popcan01a.mdl"
	ITEM.skin = 1
	ITEM.cost = 10
	ITEM.width = 1
	ITEM.height = 1
	ITEM.dUses = 5
	ITEM.dHunger = 0
	ITEM.dThirst = 20
	ITEM.dHealth = 0
	ITEM.rarity = 1
	ITEM.junk = "empty_can"

	function ITEM:OnConsume(player)
		player:SetCharacterData("stamina", 100)
	end
ITEM:Register()


local ITEM = ix.item.New2("base_drink")
	ITEM.name = "Special Breen's Water"
	ITEM.PrintName = "iSpecialBreenWater"
	ITEM.description = "iSpecialBreenWaterDesc"
	ITEM.model = "models/props_junk/popcan01a.mdl"
	ITEM.skin = 2
	ITEM.cost = 25
	ITEM.width = 1
	ITEM.height = 1
	ITEM.dUses = 5
	ITEM.dHunger = 0
	ITEM.dThirst = 30
	ITEM.dHealth = 0
	ITEM.rarity = 2
	ITEM.junk = "empty_can"

	function ITEM:OnConsume(player)
		player:SetCharacterData("stamina", 100)
	end
ITEM:Register()

ix.lang.AddTable("russian", langRu)
ix.lang.AddTable("english", langEn)