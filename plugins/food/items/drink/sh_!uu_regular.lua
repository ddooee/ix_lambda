local langEn = {}
local langRu = {}

langEn["iUBDonuts"] = "도넛 박스"
langRu["iUBDounts"] = "Пончики в коробке"
langEn["iUBDonutsDesc"] = "도넛을 만드는 과정은 모르는게 좋을겁니다."
langRu["iUBDonutsDesc"] = "Полосатая коробка с кучей душистых пончиков внутри. Внушает доверие к производителю."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Donuts"
ITEM.PrintName = "iUBDonuts"
ITEM.description = "iUBDonutsDesc"
ITEM.model = "models/bioshockinfinite/hext_cereal_box_cornflakes.mdl"
ITEM.cost = 17
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 8
ITEM.dHunger = 12.5
ITEM.dThirst = -2.5
ITEM:Register()



langEn["iUBPizza"] = "피자"
langRu["iUBPizza"] = "Пицца"
langEn["iUBPizzaDesc"] = "이탈리아에서부터 시작해 전세계적으로 유명해진 피자입니다."
langRu["iUBPizzaDesc"] = "Ещё тёплая пицца в белой картонной коробке. От нее веет запах былых времен и теста. Чёрные полоски на дне пиццы указывают на то, что она была приготовлена не в печи."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Pizza"
ITEM.PrintName = "iUBPizza"
ITEM.description = "iUBPizzaDesc"
ITEM.model = "models/props_canteen/pizza_box.mdl"
ITEM.cost = 24
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 12
ITEM.dHunger = 9
ITEM.dThirst = -0.5

ITEM.rarity = 1
ITEM:Register()



langEn["iUBTaco"] = "돼지고기 타코"
langRu["iUBTaco"] = "Тако со свининой"
langEn["iUBTacoDesc"] = "돼지고기가 꽉꽉 채워져있는 타코입니다."
langRu["iUBTacoDesc"] = "Прохладное тако, внутри которого находится небольшой кусок свинного мяса, а так же огромное количество всевозможных химических специй, которые очень плохо переносит организм."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Taco"
ITEM.PrintName = "iUBTaco"
ITEM.description = "iUBTacoDesc"
ITEM.model = "models/props_canteen/taco.mdl"
ITEM.cost = 11
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 12
ITEM.dThirst = -1
ITEM:Register()



langEn["iUBCupoftea"] = "차"
langRu["iUBCupoftea"] = "Кружка чая"
langEn["iUBCupofteaDesc"] = "보스턴에서 일어난 일들이 생각납니다."
langRu["iUBCupofteaDesc"] = "Сероватый чай, налитый в пластиковую кружку. Эта кружка на столько плохо сделана, что вы можете заметить плавающие куски пластмассы на поверхности чая."
local ITEM = ix.item.New2("base_drink")
ITEM.name = "Cup of tea"
ITEM.PrintName = "iUBCupoftea"
ITEM.description = "iUBCupofteaDesc"
ITEM.model = "models/props_junk/garbage_coffeemug001a.mdl"
ITEM.cost = 6
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 0
ITEM.dThirst = 8

ITEM:Register()



langEn["iUBBakedbeans"] = "조리된 콩"
langRu["iUBBakedbeans"] = "Запечённые бобы"
langEn["iUBBakedbeansDesc"] = "매우 수상한 가벼운 콩들입니다. 그것들을 먹어도 방사선을 받지 않기를 바래야할것같습니다."
langRu["iUBBakedbeansDesc"] = "Очень подозрительные светлые бобы. Надеюсь, что я не облучусь, если съем их. По сей видимости, их готовили в ядерном реакторе. Тем не менее, они очень вкусные!"
local ITEM = ix.item.New2("base_food")
ITEM.name = "Baked beans"
ITEM.PrintName = "iUBBakedbeans"
ITEM.description = "iUBBakedbeansDesc"
ITEM.model = "models/props_junk/garbage_metalcan001a.mdl"
ITEM.cost = 6
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 8
ITEM.dThirst = -2
ITEM:Register()


langEn["iUBJuniper"] = "Tincture of a juniper"
langRu["iUBJuniper"] = "Настойка можжевельника"
langEn["iUBJuniperDesc"] = "Idle tincture of juniper. When you open the bottle there is a smell of quality alcohol and greens. But, the taste leaves much to be desired. The main thing - that drunk!"
langRu["iUBJuniperDesc"] = "Праздная настойка можжевельника. При открытии бутылки появляется запах качественного спирта и зелени. Но, вкус оставляет желать лучшего. Главное - что пьянит!"
local ITEM = ix.item.New2("base_drink")
ITEM.name = "Juniper"
ITEM.PrintName = "iUBJuniper"
ITEM.description = "iUBJuniperDesc"
ITEM.model = "models/bioshockinfinite/jin_bottle.mdl"
ITEM.cost = 9
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 0
ITEM.dThirst = 10
ITEM.drunkTime = 72

ITEM.rarity = 1
ITEM:Register()



langEn["iUBBeer"] = "맥주"
langRu["iUBBeer"] = "Бутылированное пиво"
langEn["iUBBeerDesc"] = "매우 시원하지만 인공적인 맛이 너무 강합니다."
langRu["iUBBeerDesc"] = "Зловонное пиво, довольно резкое на вкус, но довольно хорошо пьянящее."
local ITEM = ix.item.New2("base_drink")
ITEM.name = "Beer"
ITEM.PrintName = "iUBBeer"
ITEM.description = "iUBBeerDesc"
ITEM.model = "models/bioshockinfinite/jin_bottle.mdl"
ITEM.cost = 10
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 0
ITEM.dThirst = 7
ITEM.drunkTime = 128

ITEM.junk = "empty_glass_bottle"
ITEM:Register()



langEn["iUBCola"] = "콜라"
langRu["iUBCola"] = "Бутылированная кола"
langEn["iUBColaDesc"] = "톡톡쏘는 맛이 특징인 콜라입니다. 예전과 같이 단맛이 나기는 하지만 인공적인 맛이 강한편입니다."
langRu["iUBColaDesc"] = "Довольно забавно видеть такую шипучку в таком тёмном месте, как этот город. Но, тем не менее, эта кола даже лучше, чем то, что было раньше!"
local ITEM = ix.item.New2("base_drink")
ITEM.name = "Cola"
ITEM.PrintName = "iUBCola"
ITEM.description = "iUBColaDesc"
ITEM.model = "models/bioshockinfinite/dickle_jar.mdl"
ITEM.cost = 9
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 0
ITEM.dThirst = 6

ITEM.junk = "empty_glass_bottle"
ITEM:Register()



langEn["iUBSaltedring"] = "시리얼"
langRu["iUBSaltedring"] = "Солёные колечки"
langEn["iUBSaltedringDesc"] = "우유에 말아먹는 시리얼입니다."
langRu["iUBSaltedringDesc"] = "Сухие солёные колечки, вкус у них как будто бы ешь сухую кашу. Обратная этикетка указывает на то, что в колечках возможно образование твёрдых частичек. Можно сломать зубы."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Salted Ringlets"
ITEM.PrintName = "iUBSaltedring"
ITEM.description = "iUBSaltedringDesc"
ITEM.model = "models/foodnhouseholditems/applejacks.mdl"
ITEM.cost = 7
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 12
ITEM.dHunger = 4.2
ITEM.dThirst = -1.7

ITEM:Register()



langEn["iUBBaconsubstitute"] = "Bacon substitute"
langRu["iUBBaconsubstitute"] = "Заменитель бекона"
langEn["iUBBaconsubstituteDesc"] = "Has a yellowish tinge, which is why it causes mistrust. To taste - a stick of salt, but the taste of some meat is present."
langRu["iUBBaconsubstituteDesc"] = "Имеет желтоватый оттенок, из-за чего вызывает недоверие. На вкус - палочка соли, но вкус какого-то мяса присутствует."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Bacon substitute"
ITEM.PrintName = "iUBBaconsubstitute"
ITEM.description = "iUBBaconsubstituteDesc"
ITEM.model = "models/foodnhouseholditems/bacon.mdl"
ITEM.cost = 11
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 14
ITEM.dThirst = -4

ITEM:Register()



langEn["iUBCarrot"] = "당근"
langRu["iUBCarrot"] = "Морковь"
langEn["iUBCarrotDesc"] = "인공적인 DNA 조작을 거친 당근입니다."
langRu["iUBCarrotDesc"] = "Морковь красного цвета, выглядит довольно сморщеной. Наврядли из нее можно получить какие-либо витамины, тем не менее жуётся довольно легко, чем её настоящий аналог."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Carrot"
ITEM.PrintName = "iUBCarrot"
ITEM.description = "iUBCarrotDesc"
ITEM.model = "models/foodnhouseholditems/carrot.mdl"
ITEM.cost = 3
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 4
ITEM.dThirst = -1
ITEM:Register()



langEn["iUBWinewhite"] = "화이트 와인"
langRu["iUBWinewhite"] = "Бутылка белого вина"
langEn["iUBWinewhiteDesc"] = "굉장히 우아한 자태를 뽐내는 화이트 와인입니다."
langRu["iUBWinewhiteDesc"] = "Бутылка белого вина в аккуратной обёртке с величественным знаком Альянса на этикетках. Очень хорошо пахнет розами и персиками. На вкус - довольно праздно. Альянс заботится о своих подданых!"
local ITEM = ix.item.New2("base_drink")
ITEM.name = "White wine"
ITEM.PrintName = "iUBWinewhite"
ITEM.description = "iUBWinewhiteDesc"
ITEM.model = "models/foodnhouseholditems/champagne.mdl"
ITEM.cost = 47
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 2
ITEM.dThirst = 10
ITEM.drunkTime = 256

ITEM.junk = "empty_glass_bottle"
ITEM.rarity = 4
ITEM:Register()



langEn["iUBWinered"] = "레드 와인"
langRu["iUBWinered"] = "Бутылка красного вина"
langEn["iUBWineredDesc"] = "전쟁 전에 생산된 아주 오래된 와인 한 병입니다. 이 병이 열리면 진짜 휴일이 생기고, 이 와인의 맛은 천사들의 눈물과 같습니다."
langRu["iUBWineredDesc"] = "Бутылка ну очень старого вина, которое производилось ещё до войны. Открытие этой бутылки создаёт настоящий праздник, а на вкус это вино - как слёзы ангелов."
local ITEM = ix.item.New2("base_drink")
ITEM.name = "Red wine"
ITEM.PrintName = "iUBWinered"
ITEM.description = "iUBWineredDesc"
ITEM.model = "models/foodnhouseholditems/champagne2.mdl"
ITEM.cost = 47
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 2
ITEM.dThirst = 10
ITEM.drunkTime = 200
ITEM.junk = "empty_glass_bottle"
ITEM.rarity = 4
ITEM:Register()



langEn["iUBSweetringlets"] = "Sweet ringlets"
langRu["iUBSweetringlets"] = "Сладкие колечки"
langEn["iUBSweetringletsDesc"] = "A cardboard box containing a bunch of colorful sweet rings. They taste sweet, but they are sour. It is possible, but it is better to drink this matter with milk."
langRu["iUBSweetringletsDesc"] = "Картонная коробка, содержащая в себе кучу разноцветных сладких колечек. На вкус они хоть и сладкие, но до жути кислые. Есть можно, но лучше запивать это дело молоком."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Sweet ringlets"
ITEM.PrintName = "iUBSweetringlets"
ITEM.description = "iUBSweetringletsDesc"
ITEM.model = "models/foodnhouseholditems/cheerios.mdl"
ITEM.cost = 7
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 12
ITEM.dHunger = 4.2
ITEM.dThirst = -1.7
ITEM:Register()



langEn["iUBPastrycookies"] = "다이젤"
langRu["iUBSweetringlets"] = "Печенье в обёртке"
langEn["iUBPastrycookiesDesc"] = "과자 여러개가 한 묶음으로 포장되어있습니다."
langRu["iUBPastrycookiesDesc"] = "Печенье в красивой обёртке с символикой Альянса по бокам. Оно довольно хрупкое, можно заметить уже сломанные печеньки внутри. На вкус - как песок, но привыкнуть можно."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Pastry cookies"
ITEM.PrintName = "iUBPastrycookies"
ITEM.description = "iUBPastrycookiesDesc"
ITEM.model = "models/foodnhouseholditems/digestive.mdl"
ITEM.cost = 5
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 8
ITEM.dHunger = 3.75
ITEM.dThirst = -0.625
ITEM:Register()



langEn["iUBIcecream"] = "아이스크림"
langRu["iUBIcecream"] = "Мороженое"
langEn["iUBIcecreamDesc"] = "매우 차갑고 달달한 아이스크림입니다. 어릴적 추억이 되살아나는것같습니다."
langRu["iUBIcecreamDesc"] = "Шоколадная мороженка, которая по каким-то причинам не хочет таять при такой ужасной жаре как у нас. На вкус - действительно шоколад, но что-то с ним не так. Оно не холодное!"
local ITEM = ix.item.New2("base_food")
ITEM.name = "Ice cream"
ITEM.PrintName = "iUBIcecream"
ITEM.description = "iUBIcecreamDesc"
ITEM.model = "models/foodnhouseholditems/icecream.mdl"
ITEM.cost = 19
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 4
ITEM.dThirst = 1

ITEM.rarity = 3
ITEM:Register()



langEn["iUBHotdog"] = "핫도그"
langRu["iUBHotdog"] = "Хот-дог"
langEn["iUBHotdogDesc"] = "말 그대로, 반죽 안에 소시지가 들어있습니다. 반죽 자체가 모래에 가깝고, 소시지는 고무에 가깝습니다."
langRu["iUBHotdogDesc"] = "Буквально сосиска в тесте. Правда, само тесто больше похоже на песок, а сосиска больше похожа на резину. С кетчупом пойдёт."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Hot-dog"
ITEM.PrintName = "iUBHotdog"
ITEM.description = "iUBHotdogDesc"
ITEM.model = "models/foodnhouseholditems/hotdog.mdl"
ITEM.cost = 8
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 4
ITEM.dHunger = 12.5
ITEM.dThirst = -2.5
ITEM:Register()



langEn["iUBRPepper"] = "Red Pepper"
langRu["iUBRPepper"] = "Красный перец"
langEn["iUBRPepperDesc"] = "Pretty big red pepper. Its peel has an unhealthy red color, which means that it is likely to be covered with rather dangerous chemicals. But nobody cares."
langRu["iUBRPepperDesc"] = "Довольно большой красный перец. Его кожица имеет нездоровый красный цвет, а значит, что он, скорее всего, покрыт довольно опасными химикатами. Но никого это не волнует."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Red Pepper"
ITEM.PrintName = "iUBRPepper"
ITEM.description = "iUBRPepperDesc"
ITEM.model = "models/foodnhouseholditems/pepper1.mdl"
ITEM.cost = 1
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 1
ITEM.dHunger = 5
ITEM.dThirst = 0
ITEM:Register()



langEn["iUBPickles"] = "피클병"
langRu["iUBPickles"] = "Банка с соленьями"
langEn["iUBPicklesDesc"] = "안에 많은 피클이 들어 있는 작은 병입니다. 안의 물은 다소 점성이 있고, 피클은 씹기가 매우 어렵습니다. 하지만, 그럼에도 불구하고, 그것들은 매우 맛있습니다!"
langRu["iUBPicklesDesc"] = "Небольшая банка с кучей разных солений внутри. Вода внутри довольно вязкая, а соленья очень трудно жуются. Но, тем не менее, они очень вкусные!"
local ITEM = ix.item.New2("base_food")
ITEM.name = "Pickles"
ITEM.PrintName = "iUBPickles"
ITEM.description = "iUBPicklesDesc"
ITEM.model = "models/foodnhouseholditems/picklejar.mdl"
ITEM.cost = 6
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 8
ITEM.dHunger = 5
ITEM.dThirst = -2.5

ITEM.rarity = 1
ITEM:Register()


langRu["iUBBagel"] = "베이글"
langEn["iUBBagel"] = "Bagel"
langEn["iUBBagelDesc"] = "품질 테스트로 구성되고 향기로운 향신료가 뿌려진 베이글입니다. 죽기 전에 한입정돈 하고싶어지는 맛입니다."
langRu["iUBBagelDesc"] = "Рогалик, состоящий из качественного теста и посыпанный душистыми специями. До смерти сладкий!"
local ITEM = ix.item.New2("base_food")
ITEM.name = "Bagel"
ITEM.PrintName = "iUBBagel"
ITEM.description = "iUBBagelDesc"
ITEM.model = "models/foodnhouseholditems/pretzel.mdl"
ITEM.cost = 6
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 3
ITEM.dHunger = 10
ITEM.dThirst = 0
ITEM:Register()



langEn["iUBSandwich"] = "샌드위치"
langRu["iUBSandwich"] = "Сэндвич"
langEn["iUBSandwichDesc"] = "채소와 햄, 빵으로 구성되어있는 샌드위치입니다."
langRu["iUBSandwichDesc"] = "Готовый к употреблению сэндвич. Он состоит из чёрствого хлеба, сомнительного мяса и затухшей зелени. Что ещё нужно для счастья?"
local ITEM = ix.item.New2("base_food")
ITEM.name = "Sandwich"
ITEM.PrintName = "iUBSandwich"
ITEM.description = "iUBSandwichDesc"
ITEM.model = "models/foodnhouseholditems/sandwich.mdl"
ITEM.cost = 6
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 16
ITEM.dThirst = -2
ITEM:Register()



langEn["iUBBurger"] = "햄버거"
langRu["iUBBurger"] = "Бургер"
langEn["iUBBurgerDesc"] = "다른 부위에 붙어있는 버거는 옛날 생각이 납니다. 그 이후로 남은 것은 화학물질의 쓴맛뿐이라는 점이 안타깝습니다."
langRu["iUBBurgerDesc"] = "Склеяный из разных частей бургер напоминает о былых временах. Жаль, что с тех времен осталась только горечь химикатов."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Burger"
ITEM.PrintName = "iUBBurger"
ITEM.description = "iUBBurgerDesc"
ITEM.model = "models/foodnhouseholditems/mcdburger.mdl"
ITEM.cost = 22
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 20
ITEM.dThirst = -3

ITEM.rarity = 1
ITEM:Register()



langEn["iUBKetp"] = "케찹"
langRu["iUBKetp"] = "Кетчуп"
langEn["iUBKetpDesc"] = "투명한 항아리에 담긴 붉은 점성 액체입니다. 라벨에는 케첩이라고 적혀 있지만 녹슨 금속에 가까운 맛이 납니다."
langRu["iUBKetpDesc"] = "Красная вязкая жидкость в прозрачной баночке. Этикетка гласит, что это кетчуп, но на вкус похоже больше на плавленый ржавый металл."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Ketchup"
ITEM.PrintName = "iUBKetp"
ITEM.description = "iUBKetpDesc"
ITEM.model = "models/foodnhouseholditems/ketchup.mdl"
ITEM.cost = 2
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 5
ITEM.dHunger = 8
ITEM.dThirst = -8

ITEM:Register()




langEn["iUBWalnut"] = "월넛 파이"
langRu["iUBWalnut"] = "Ореховый пирог"
langEn["iUBWalnutDesc"] = "오줌 찌린내를 풍기는 역겨운 파이입니다. 그러나 냄새와 달리 맛은 매우 근사합니다."
langRu["iUBWalnutDesc"] = "Свежий пирог, от которого отдает ароматом из далёких времён, когда мы все мочились в штаны. Это было год назад."
local ITEM = ix.item.New2("base_food")
ITEM.name = "Walnut Pie"
ITEM.PrintName = "iUBWalnut"
ITEM.description = "iUBWalnutDesc"
ITEM.model = "models/foodnhouseholditems/pie.mdl"
ITEM.cost = 36
ITEM.width = 1
ITEM.height = 1
ITEM.dUses = 10
ITEM.dHunger = 12
ITEM.dThirst = 0

ITEM.rarity = 2
ITEM:Register()

ix.lang.AddTable("russian", langRu)
ix.lang.AddTable("korean", langEn)