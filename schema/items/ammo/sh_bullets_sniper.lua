-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\stackable\\sh_bullets_sniper.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
ITEM.name = "저격소총 탄환 상자"
ITEM.model = "models/items/sniper_round_box.mdl"
ITEM.description = "저격소총에 사용되는 탄환이 들어 있습니다."
ITEM.category = "탄환"

ITEM.colorAppendix = {["blue"] = "탄환을 사용하기 위해서는 탄창에 넣어야 합니다. 드래그로 상호작용이 가능합니다."}

ITEM.ammo = "SniperPenetratedRound" -- type of the ammo
ITEM.ammoAmount = 15 -- amount of the ammo