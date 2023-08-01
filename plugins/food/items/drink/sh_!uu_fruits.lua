local langEn = {}
local langRu = {}

langEn["iUBApple"] = "UU브랜드 사과"
langRu["iUBApple"] = "Фирменное яблоко"
langEn["iUBAppleDesc"] = "측면에 연합 로고가 인쇄된 빨간 사과로 신선하고 과일 향을 완벽히 유지합니다."
langRu["iUBAppleDesc"] = "Красное яблоко с напечатанным знаком Альянса на нём. Сохраняет вкусный свежий аромат."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Apple"
ITEM.PrintName = "iUBApple"
ITEM.description = "iUBAppleDesc"
ITEM.model = "models/bioshockinfinite/hext_apple.mdl"
ITEM.cost = 2
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 1
ITEM.dThirst = 0
ITEM.rarity = 1
ITEM:Register()



langEn["iUBBanana"] = "UU브랜드 바나나"
langRu["iUBBanana"] = "Фирменный банан"
langEn["iUBBananaDesc"] = "연합 로고가 뚜렷하게 인쇄되어있는 맛있게 생긴 바나나입니다. 진짜 바나나만큼 부드럽지는 않습니다."
langRu["iUBBananaDesc"] = "Аппетитно выглядящий банан с напечатанным знаком Альянса на нём. Не такой мягкий, как должен бы быть."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Banana"
ITEM.PrintName = "iUBBanana"
ITEM.description = "iUBBananaDesc"
ITEM.model = "models/bioshockinfinite/hext_banana.mdl"
ITEM.cost = 3
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 3
ITEM.dThirst = 0
ITEM.rarity = 1
ITEM:Register()


langEn["iUBMelon"] = "UU브랜드 멜론"
langRu["iUBMelon"] = "Фирменный арбуз"
langEn["iUBMelonDesc"] = "빨간 젤을 숨기고 있는 실리콘 껍질로 구성된 크고 녹색의 합성 과일입니다. 젤을 깨물면 수박 사탕을 연상시키는 맛이 날 수 있지만 매우 불쾌한 맛이 납니다."
langRu["iUBMelonDesc"] = "Большой, зеленый синтетический фрукт, состоящий из силиконовой оболочки, скрывающей красный гель. Гель на вкус напоминает конфеты из арбуза."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Melon"
ITEM.PrintName = "iUBMelon"
ITEM.description = "iUBMelonDesc"
ITEM.model = "models/props_junk/watermelon01.mdl"
ITEM.cost = 16
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 2
ITEM.dThirst = 6
ITEM.rarity = 1
ITEM:Register()


langEn["iUBOrange"] = "UU 브랜드 오렌지"
langRu["iUBOrange"] = "Фирменный апельсин"
langEn["iUBOrangeDesc"] = "연합 로고가 새겨진 맛있어 보이는 오렌지입니다. 하지만 원래의 오렌지만큼 신선한 냄새가 나지는 않습니다."
langRu["iUBOrangeDesc"] = "Аппетитно выглядящий апельсин с напечатанным знаком Альянса на нём. Тем не менее, он не пахнет столь же свежо, как его оригинальный аналог."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Orange"
ITEM.PrintName = "iUBOrange"
ITEM.description = "iUBOrangeDesc"
ITEM.model = "models/bioshockinfinite/hext_orange.mdl"
ITEM.cost = 2
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 2
ITEM.dThirst = 0
ITEM.dHealth = 0
ITEM.rarity = 1
ITEM:Register()


langEn["iUBPear"] = "UU브렌드 배"
langRu["iUBPear"] = "Фирменная груша"
langEn["iUBPearDesc"] = "연합 로고가 인쇄된 맛있게 생긴 배입니다. 하지만 원래의 배만큼 신선한 냄새가 나지는 않습니다."
langRu["iUBPearDesc"] = "Аппетитно выглядящая груша с напечатанным знаком Альянса на ней. Тем не менее, она не пахнет столь же свежо, как её оригинальный аналог."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Pear"
ITEM.PrintName = "iUBPear"
ITEM.description = "iUBPearDesc"
ITEM.model = "models/bioshockinfinite/hext_pear.mdl"
ITEM.cost = 2
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 2
ITEM.dThirst = 0
ITEM.dHealth = 0
ITEM.rarity = 1
ITEM:Register()


langEn["iUBPineapple"] = "UU브랜드 파인애플"
langRu["iUBPineapple"] = "Фирменный ананас"
langEn["iUBPineappleDesc"] = "연합 로고가 인쇄된 맛있게 생긴 파인애플입니다. 그러나 원래의 파인애플만큼 신선한 냄새가 나지 않습니다."
langRu["iUBPineappleDesc"] = "Аппетитно выглядящий ананас с напечатанным знаком Альянса на нём. Тем не менее, он не пахнет столь же свежо, как его оригинальный аналог."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Pineapple"
ITEM.PrintName = "iUBPineapple"
ITEM.description = "iUBPineappleDesc"
ITEM.model = "models/bioshockinfinite/hext_pineapple.mdl"
ITEM.cost = 8
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 4
ITEM.dThirst = 4
ITEM.dHealth = 0
ITEM.rarity = 1
ITEM:Register()


langEn["iUBPotato"] = "UU브랜드 감자"
langRu["iUBPotato"] = "Фирменная картошка"
langEn["iUBPotatoDesc"] = "연합의 뚜렷한 로고가 있는 익히지 않은 감자입니다. 아무래도 그들이 색상을 정확하게 파악하지 못한 것 같습니다."
langRu["iUBPotatoDesc"] = "Сырая картошка с напечатанным знаком Альянса на ней. Кажется, им не удалось получить правильный цвет."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Potato"
ITEM.PrintName = "iUBPotato"
ITEM.description = "iUBPotatoDesc"
ITEM.model = "models/bioshockinfinite/hext_potato.mdl"
ITEM.cost = 3
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 2
ITEM.dHunger = 10
ITEM.dThirst = -5
ITEM.rarity = 1
ITEM:Register()

ix.lang.AddTable("russian", langRu)
ix.lang.AddTable("korean", langEn)