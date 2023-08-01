local langEn = {}
local langRu = {}

langEn["iUBChocolate"] = "UU브랜드 초콜릿"
langRu["iUBChocolate"] = "Фирменный шоколад"
langEn["iUBChocolateDesc"] = "연합이 승인한 신중하게 포장된 초콜릿 바입니다. 뚜렷한 유니온 로고가 상단에 인쇄되어 있습니다."
langRu["iUBChocolateDesc"] = "Бережно упакованная плитка шоколада, разрешённая Альянсом. Отчётливый знак Альянса напечатан на лицевой стороне."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Chocolate"
ITEM.PrintName = "iUBChocolate"
ITEM.description = "iUBChocolateDesc"
ITEM.model = "models/bioshockinfinite/hext_candy_chocolate.mdl"
ITEM.cost = 9
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 12
ITEM.dHunger = 2.5
ITEM.dHealth = 0

ITEM.rarity = 2
ITEM:Register()


langEn["iUBBread"] = "UU브랜드 빵"
langRu["iUBBread"] = "Фирменный хлеб"
langEn["iUBBreadDesc"] = "연합 로고가 있는 멋진 빵 한 덩어리입니다."
langRu["iUBBreadDesc"] = "Хорошая буханка хлеба со знаком Альянса."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Bread"
ITEM.PrintName = "iUBBread"
ITEM.description = "iUBBreadDesc"
ITEM.model = "models/bioshockinfinite/dread_loaf.mdl"
ITEM.cost = 8
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 5
ITEM.dThirst = -2

ITEM.rarity = 1
ITEM:Register()


langEn["iUBFlakes"] = "Union Branded Bran Flakes"
langRu["iUBFlakes"] = "Фирменные хлопья"
langEn["iUBFlakesDesc"] = "A carefully packaged brown box containing bran flakes approved by the Universal Union. The Union logo is present on the front."
langRu["iUBFlakesDesc"] = "Тщательно упакованный коричневый ящик, содержащий хлопья. Логотип Альянса напечатан на лицевой стороне."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Bran Flakes"
ITEM.PrintName = "iUBFlakes"
ITEM.description = "iUBBreadDesc"
ITEM.model = "models/bioshockinfinite/hext_cereal_box_cornflakes.mdl"
ITEM.cost = 9
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 6
ITEM.dThirst = -3

ITEM.rarity = 1
ITEM:Register()


langEn["iUBTakeout"] = "UU브랜드 중국 음식"
langRu["iUBTakeout"] = "Фирменная лапша"
langEn["iUBTakeoutDesc"] = "한때 미국에서 주로 보이던 중국 음식입니다. 지금은 인공적인 맛밖에 나질 않습니다."
langRu["iUBTakeoutDesc"] = "Почти квадратный картонный контейнер с чау-чау-мейном и оранжевым цыпленком внутри. Лапша довольно сухая, и курица похожа на силикон..."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Chinese Takeout"
ITEM.PrintName = "iUBTakeout"
ITEM.description = "iUBTakeoutDesc"
ITEM.model = "models/props_junk/garbage_takeoutcarton001a.mdl"
ITEM.cost = 10
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 10
ITEM.dThirst = -2

ITEM.junk = "empty_chinese_takeout"
ITEM.rarity = 1
ITEM:Register()

langEn["iUBMilkCarton"] = "UU브랜드 우유"
langRu["iUBMilkCarton"] = "Фирменный пакет молока"
langEn["iUBMilkCartonDesc"] = "꽤나 진짜같은 우유맛이 나기는 하지만 칼슘이 거의 들어있지 않습니다."
langRu["iUBMilkCartonDesc"] = "Картонная коробка, заполненная синтетическим молоком. Немного неаппетитное, но хороший источник кальция..."
local ITEM = ix.item.New2("base_drink")
ITEM.name = "Union Branded Milk Carton"
ITEM.PrintName = "iUBMilkCarton"
ITEM.description = "iUBMilkCartonDesc"
ITEM.model = "models/props_junk/garbage_milkcarton002a.mdl"
ITEM.cost = 21
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 1
ITEM.dThirst = 8

ITEM.junk = "empty_carton"
ITEM.rarity = 2
ITEM:Register()


langEn["iUBMilkJug"] = "Union Branded Milk Jug"
langRu["iUBMilkJug"] = "Фирменный кувшин молока"
langEn["iUBMilkJugDesc"] = "A jug filled with slightly chunky-tasting synthetic milk. Somewhat unappetizing, but a decent source of calcium..."
langRu["iUBMilkJugDesc"] = "Закрытый, пластиковый кувшин с ручкой, заполненный синтетическим молоком. Немного неаппетитное, но хороший источник кальция..."
local ITEM = ix.item.New2("base_drink")
ITEM.name = "Union Branded Milk Jug"
ITEM.PrintName = "iUBMilkJug"
ITEM.description = "iUBMilkJugDesc"
ITEM.model = "models/props_junk/garbage_milkcarton001a.mdl"
ITEM.cost = 17
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 2
ITEM.dThirst = 10

ITEM.junk = "empty_jug"
ITEM.rarity = 2
ITEM:Register()


langEn["iUBSardines"] = "UU브랜드 정어리 통조림"
langRu["iUBSardines"] = "Фирменные сардины"
langEn["iUBSardinesDesc"] = "정어리를 대표하는 생선과 같은 내용물이 들어있는 캔입니다. 생선 맛이 나는 대체품은 당신이 그것이 정말 생선인지 생각하게 만듭니다."
langRu["iUBSardinesDesc"] = "Консервная банка с рыбным содержимым, предположительно сардинами. Заменившая рыбу замена заставляет задуматься, действительно ли это рыба."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Sardines"
ITEM.PrintName = "iUBSardines"
ITEM.description = "iUBSardinesDesc"
ITEM.model = "models/bioshockinfinite/cardine_can_open.mdl"
ITEM.cost = 18
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 4
ITEM.dHunger = 15
ITEM.dThirst = 0

ITEM.rarity = 2
ITEM:Register()


langEn["iUBCrisps"] = "Union Branded Crisps"
langRu["iUBCrisps"] = "Фирменные чипсы"
langEn["iUBCrispsDesc"] = "A small, flimsy package with a printed logo of the Universal Union. The inscription reads 'Lightly Salted Union Crisps'"
langRu["iUBCrispsDesc"] = "Небольшой, надутый пакет с напечатанным знаком Альянса. Надпись гласит: «Слабосоленные чипсы Альянса»"
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Crisps"
ITEM.PrintName = "iUBCrisps"
ITEM.description = "iUBCrispsDesc"
ITEM.model = "models/bioshockinfinite/bag_of_hhips.mdl"
ITEM.cost = 11
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 12
ITEM.dHunger = 3.75
ITEM.dThirst = 0

ITEM.rarity = 1
ITEM:Register()


langEn["iUBCheeseWheel"] = "UU브랜드 치즈휠"
langRu["iUBCheeseWheel"] = "Фирменный сыр"
langEn["iUBCheeseWheelDesc"] = "연합이 승인한 맛있는 치즈휠입니다. 강한 인공 치즈 냄새가 납니다."
langRu["iUBCheeseWheelDesc"] = "Вкусное колесо одобренного Альянсом сыра. У него сильный искусственный запах сыра!"
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Cheese Wheel"
ITEM.PrintName = "iUBCheeseWheel"
ITEM.description = "iUBCheeseWheelDesc"
ITEM.model = "models/bioshockinfinite/pound_cheese.mdl"
ITEM.cost = 12
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 8
ITEM.dHunger = 5

ITEM.rarity = 2
ITEM:Register()


langEn["iUBCornCob"] = "UU브랜드 옥수수"
langRu["iUBCornCob"] = "Фирменная кукуруза"
langEn["iUBCornCobDesc"] = "연합 로고가 찍힌 옥수수 조각. 옥수수 인공 냄새가 그 주변을 둘러싸고 있습니다."
langRu["iUBCornCobDesc"] = "Кукуруза со штампом Альянса на ней. У неё искусственный запах."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Corn Cob"
ITEM.PrintName = "iUBCornCob"
ITEM.description = "iUBCornCobDesc"
ITEM.model = "models/bioshockinfinite/porn_on_cob.mdl"
ITEM.cost = 7
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 6
ITEM.dThirst = 0

ITEM.rarity = 1
ITEM:Register()


langEn["iUBPeanuts"] = "UU브랜드 땅콩봉투"
langRu["iUBPeanuts"] = "Фирменный арахис"
langEn["iUBPeanutsDesc"] = "소금에 절인 땅콩 한 봉지입니다. 포장 양쪽에 연합 로고가 인쇄되어 있습니다."
langRu["iUBPeanutsDesc"] = "Мешочек солёного арахиса. Знак Альянса напечатан на обоих сторонах пачки."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Bag of Peanuts"
ITEM.PrintName = "iUBPeanuts"
ITEM.description = "iUBPeanutsDesc"
ITEM.model = "models/bioshockinfinite/rag_of_peanuts.mdl"
ITEM.cost = 2
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 2
ITEM.dThirst = -0.2

ITEM.rarity = 1
ITEM:Register()


langEn["iUBPopcorn"] = "UU브랜드 팝콘"
langRu["iUBPopcorn"] = "Фирменный попкорн"
langEn["iUBPopcornDesc"] = "연합의 규정에 따라 만들어진 팝콘 상자입니다. 뭔가가 막 내려가려 하고 있습니다."
langRu["iUBPopcornDesc"] = "Открытый пакет с попкорном, приготовленный по стандартам Альянса."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Popcorn"
ITEM.PrintName = "iUBPopcorn"
ITEM.description = "iUBPopcornDesc"
ITEM.model = "models/bioshockinfinite/topcorn_bag.mdl"
ITEM.cost = 3
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 12
ITEM.dHunger = 1.25
ITEM.dThirst = 0

ITEM.rarity = 1
ITEM:Register()


langEn["iUBInstantPotatos"] = "UU브랜드 토마토 감자"
langRu["iUBInstantPotatos"] = "Фирменные консервы"
langEn["iUBInstantPotatosDesc"] = "토마토 소스에 갈색 구운 감자로 채워져 있는 연합 로고가 찍힌 양철통."
langRu["iUBInstantPotatosDesc"] = "Жестяная банка со знаком Альянса на ней, заполненная коричневым печеным картофелем в томатном соусе."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Union Branded Instant Potatos"
ITEM.PrintName = "iUBInstantPotatos"
ITEM.description = "iUBInstantPotatosDesc"
ITEM.model = "models/props_junk/garbage_metalcan001a.mdl"
ITEM.cost = 10
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 8
ITEM.dThirst = 1

ITEM.junk = "empty_tin_can"
ITEM.rarity = 1
ITEM:Register()


langEn["iMinimalSupplements"] = "Minimal Supplements"
langRu["iMinimalSupplements"] = "Пищевые добавки \"Минимум\""
langEn["iMinimalSupplementsDesc"] = "A vacuum-packed package containing a thick porridge-like substance. It is brown, has a heavy taste of salt and a plastic spoon is packed alongside it. There is just enough to keep one alive in terms of calories."
langRu["iMinimalSupplementsDesc"] = "Вакуумная упаковка, содержащая густую кашицу. Она коричневого цвета, с сильным вкусом соли. Пластиковая ложка упакована рядом. Этого достаточно, чтобы остаться в живых."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Minimal Supplements"
ITEM.PrintName = "iMinimalSupplements"
ITEM.description = "iMinimalSupplementsDesc"
ITEM.model = "models/gibs/props_canteen/vm_sneckol.mdl"
ITEM.cost = 14
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 14
ITEM.dThirst = 0
ITEM:Register()


langEn["iCitizenSupplements"] = "Citizen Supplements"
langRu["iCitizenSupplements"] = "Пищевые добавки \"Гражданин\""
langEn["iCitizenSupplementsDesc"] = "A normal-sized bag containing a thick porridge-like substance. It is brown, has a heavy taste of salt and a plastic spoon is packed alongside it. There is an alright amount inside."
langRu["iCitizenSupplementsDesc"] = "Небольшая упаковка, содержащая густую кашицу. Она коричневого цвета, с сильным вкусом соли. Пластиковая ложка упакована рядом. Здесь достаточное количество этой штуки."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Citizen Supplements"
ITEM.PrintName = "iCitizenSupplements"
ITEM.description = "iCitizenSupplementsDesc"
ITEM.model = "models/mres/consumables/tag_mre.mdl"
ITEM.cost = 20
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 20
ITEM.dThirst = 0
ITEM:Register()


langEn["iLoyalistSupplements"] = "Loyalist Supplements"
langRu["iLoyalistSupplements"] = "Пищевые добавки \"Лоялист\""
langEn["iLoyalistSupplementsDesc"] = "A normal-sized bag containing a thin gruel, with chunks of what appear to be meat; though, upon closer inspection, it is clearly synthetic. It happens to also come with a little plastic spork. There are also three small cracker bread pieces and a bar of Union chocolate."
langRu["iLoyalistSupplementsDesc"] = "Небольшая упаковка, содержащая тонкую кашу с кусками мяса, хотя, при ближайшем рассмотрении, она явно синтетическая. Пластиковая ложка упакована рядом. Есть также три небольших кусочка хлеба и плитка фирменного шоколада."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Loyalist Supplements"
ITEM.PrintName = "iLoyalistSupplements"
ITEM.description = "iLoyalistSupplementsDesc"
ITEM.model = "models/mres/consumables/pag_mre.mdl"
ITEM.cost = 31
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 25
ITEM.dThirst = 0
ITEM.rarity = 1
ITEM:Register()


langEn["iCPSupplements"] = "Civil Protection Supplements"
langRu["iCPSupplements"] = "Пищевые добавки \"Гражданская Оборона\""
langEn["iCPSupplementsDesc"] = "A large cardboard box that almost resembles that of a pre-war microwave dinner. There is a foil tin inside containing a choice of mutton, chicken or beef stew, with rice mixed into it and a full set of plastic cutlery. A small tub of assorted nuts is provided, as well as two chalky, white caffeine pills in a plastic packet. A sealed packet of crackers is separate, with a well sized tube of chocolate paste to spread onto them."
langRu["iCPSupplementsDesc"] = "Большая картонная коробка, почти напоминающая довоенный микроволновый обед. Внутри есть фольга, содержащая кусок баранины, курятины или говядины, с рисом, смешанным с ним, и полным набором пластиковых столовых приборов. Предоставляется небольшой пакет с различными орехами, а также две таблетки с кофеином в пластиковом пакете. Запечатанный пакетик сухарей, с хорошей шоколадной пастой в комплекте."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Civil Protection Supplements"
ITEM.PrintName = "iCPSupplements"
ITEM.description = "iCPSupplementsDesc"
ITEM.model = "models/mres/consumables/zag_mre.mdl"
ITEM.cost = 37
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 30
ITEM.dThirst = 0
ITEM.rarity = 1
ITEM:Register()


langEn["iUBSushi"] = "Sushi set"
langRu["iUBSushi"] = "Фирменный суши-сет"
langEn["iUBSushiDesc"] = "Not fresh at first sight, but looks tasty."
langRu["iUBSushiDesc"] = "Выглядит не так свежо на первый взгляд, но довольно аппетитно."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Sushi Set"
ITEM.PrintName = "iUBSushi"
ITEM.description = "iUBSushiDesc"
ITEM.model = "models/sushipack/fisheggsushi01.mdl"
ITEM.cost = 25
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 20
ITEM.dThirst = 0
ITEM.rarity = 1
ITEM:Register()


langEn["iUBSake"] = "사케"
langRu["iUBSake"] = "Сакэ"
langEn["iUBSakeDesc"] = "약간 먼지가 껴있으며 일본어가 인쇄되어있는 병입니다."
langRu["iUBSakeDesc"] = "Обычная бутылка с сакэ, немного пыльная."
local ITEM = ix.item.New2("base_drink")
ITEM.name = "Sake"
ITEM.PrintName = "iUBSake"
ITEM.description = "iUBSakeDesc"
ITEM.model = "models/foodnhouseholditems/champagne3.mdl"
ITEM.cost = 30
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 0
ITEM.dThirst = 20
ITEM.rarity = 3
ITEM:Register()


langEn["iUBKebab"] = "케밥"
langRu["iUBKebab"] = "Шаурма"
langEn["iUBKebabDesc"] = "신선해보이지는 않지만 맛있어보입니다."
langRu["iUBKebabDesc"] = "Выглядит не так свежо на первый взгляд, но довольно аппетитно."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Kebab"
ITEM.PrintName = "iUBKebab"
ITEM.description = "iUBKebabDesc"
ITEM.model = "models/foodnhouseholditems/chicken_wrap.mdl"
ITEM.cost = 11
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 2
ITEM.dHunger = 30
ITEM.dThirst = -2.5
ITEM:Register()


langEn["iUBLobster"] = "구운 가재"
langRu["iUBLobster"] = "Фирменный жаренный лобстер"
langEn["iUBLobsterDesc"] = "가재를 후라이팬에 조리한 결과물입니다. 매우 맛있어보입니다."
langRu["iUBLobsterDesc"] = "Жаренное мясо лобстера, пахнет вкусно."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Fried Lobster"
ITEM.PrintName = "iUBLobster"
ITEM.description = "iUBLobsterDesc"
ITEM.model = "models/foodnhouseholditems/lobster2.mdl"
ITEM.cost = 28
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 45
ITEM.dThirst = 4

ITEM.rarity = 1
ITEM:Register()


langEn["iUBFriedmeat"] = "구운 고기"
langRu["iUBFriedmeat"] = "Фирменное жаренное мясо"
langEn["iUBFriedmeatDesc"] = "군침이 절로 흐르게 만드는 비주얼을 지녔습니다."
langRu["iUBFriedmeatDesc"] = "Мясо покрытое специями, на вид пожаренное."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Fried Meat"
ITEM.PrintName = "iUBFriedmeat"
ITEM.description = "iUBFriedmeatDesc"
ITEM.model = "models/foodnhouseholditems/steak2.mdl"
ITEM.cost = 32
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 24
ITEM.dThirst = 3

ITEM.rarity = 1
ITEM:Register()


langEn["iUBCockCoco"] = "코코넛 칵테일"
langRu["iUBCockCoco"] = "Коктейль из кокоса"
langEn["iUBCockCocoDesc"] = "코코넛 내부에 칵테일이 있고, 우산이 있는 장식물도 꽃혀있습니다."
langRu["iUBCockCocoDesc"] = "В самом кокосе находится коктейль, так же из него торчит трубочка с зонтиком."
local ITEM = ix.item.New2("base_drink")
ITEM.name = "Coconut Cocktail"
ITEM.PrintName = "iUBCockCoco"
ITEM.description = "iUBCockCocoDesc"
ITEM.model = "models/foodnhouseholditems/coconut_drink.mdl"
ITEM.cost = 30
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 2
ITEM.dThirst = 24

ITEM.rarity = 2
ITEM:Register()


langEn["iUBPapple"] = "파인애플 칵테일"
langRu["iUBPapple"] = "Коктейль из ананаса"
langEn["iUBPappleDesc"] = "파인애플 내부에 칵테일이 있으며 우산 장식물이 꽃혀있습니다."
langRu["iUBPappleDesc"] = "В самом ананасе находится коктейль, так же из него торчит трубочка с зонтиком."
local ITEM = ix.item.New2("base_drink")
ITEM.name = "Pineapple Cocktail"
ITEM.PrintName = "iUBPapple"
ITEM.description = "iUBPineapplecocktailDesc"
ITEM.model = "models/foodnhouseholditems/pineapple_drink.mdl"
ITEM.cost = 30
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 2
ITEM.dThirst = 24

ITEM.rarity = 2
ITEM:Register()


langEn["iUBSpahnetti"] = "스파게티"
langRu["iUBSpahnetti"] = "Спагетти"
langEn["iUBSpahnettiDesc"] = "아무도 건들지 않은 스파게티입니다!"
langRu["iUBSpahnettiDesc"] = "Замечательные спагетти в тарелочке, никто не трогал их!"
local ITEM = ix.item.New2("base_food")
ITEM.name = "Spagnetti"
ITEM.PrintName = "iUBSpahnetti"
ITEM.description = "iUBSpahnettiDesc"
ITEM.model = "models/bowlofspaghetti01/bowlofspaghetti01.mdl"
ITEM.cost = 20
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 10
ITEM.dThirst = 0
ITEM:Register()


langEn["iUBPasta"] = "Pasta"
langRu["iUBPasta"] = "Макароны"
langEn["iUBPastaDesc"] = "Pasta with some ketchup on it and spices."
langRu["iUBPastaDesc"] = "Макароны с капелькой кетчупа на них а так же специй."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Pasta"
ITEM.PrintName = "iUBPasta"
ITEM.description = "iUBPastaDesc"
ITEM.model = "models/pennepasta01/pennepasta01.mdl"
ITEM.cost = 20
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 10
ITEM.dThirst = 0
ITEM:Register()


langEn["iUBChocotail"] = "Шоколадный коктейль"
langRu["iUBChocotail"] = "초콜릿 칵테일"
langEn["iUBChocotailDesc"] = "초콜릿으로 만든 칵테일, 체리와 함께 안에 크림이 들어 있습니다."
langRu["iUBChocotailDesc"] = "Коктейль сделанный из шоколадного корпуса, внутри находятся сливки вместе с вишней."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Chocolate cocktail"
ITEM.PrintName = "iUBChocotail"
ITEM.description = "iUBChocotailDesc"
ITEM.model = "models/chocolateshake01/chocolateshake01.mdl"
ITEM.cost = 25
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 2
ITEM.dThirst = 20

ITEM.rarity = 2
ITEM:Register()


langEn["iUBChampagne"] = "샴페인"
langRu["iUBChampagne"] = "Шампанское"
langEn["iUBChampagneDesc"] = "큰 유리병안에 노란색 액체가 들어있습니다."
langRu["iUBChampagneDesc"] = "Большая бутылка с жёлтой жидкостью внутри."
local ITEM = ix.item.New2("base_drink")
ITEM.name = "Champagne"
ITEM.PrintName = "iUBChampagne"
ITEM.description = "iUBChampagneDesc"
ITEM.model = "models/foodnhouseholditems/champagne3.mdl"
ITEM.cost = 47
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 1
ITEM.dThirst = 10

ITEM.rarity = 4
ITEM:Register()


langEn["iUBEdrink"] = "에너지드링크"
langRu["iUBEdrink"] = "Энергетик"
langEn["iUBEdrinkDesc"] = "Monster라는 문구가 인쇄되어있는 캔입니다."
langRu["iUBEdrinkDesc"] = "Банка с надписью Monster."
local ITEM = ix.item.New2("base_drink")
ITEM.name = "Energy Drink"
ITEM.PrintName = "iUBEdrink"
ITEM.description = "iUBEdrinkDesc"
ITEM.model = "models/foodnhouseholditems/sodacanb01.mdl"
ITEM.cost = 36
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = -1
ITEM.dThirst = 11

ITEM.rarity = 4
ITEM:Register()


langEn["iUBNutella"] = "초콜릿 파스타"
langRu["iUBNutella"] = "Шоколадная паста"
langEn["iUBNutellaDesc"] = "보기만해도 구역질이 나옵니다."
langRu["iUBNutellaDesc"] = "Стеклянная баночка с шоколадной пастой внутри."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Nutella"
ITEM.PrintName = "iUBNutella"
ITEM.description = "iUBNutellaDesc"
ITEM.model = "models/foodnhouseholditems/nutella.mdl"
ITEM.cost = 25
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 10 
ITEM.dThirst = -2

ITEM.rarity = 2
ITEM:Register()


langEn["iUBOldredwine"] = "숙성된 레드 와인"
langRu["iUBOldredwine"] = "Старое красное вино"
langEn["iUBOldredwineDesc"] = "꽤 오랜시간동안 숙성된 레드와인입니다."
langRu["iUBOldredwineDesc"] = "Старая красная бутылка вина с тускло-красной жидкостью внутри."
local ITEM = ix.item.New2("base_drink")
ITEM.name = "Old red wine"
ITEM.PrintName = "iUBOldredwine"
ITEM.description = "iUBOldredwineDesc"
ITEM.model = "models/foodnhouseholditems/winebottle4.mdl"
ITEM.cost = 60
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 3
ITEM.dThirst = 12

ITEM.rarity = 4
ITEM:Register()

ix.lang.AddTable("russian", langRu)
ix.lang.AddTable("korean", langEn)