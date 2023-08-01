-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\stackable\\sh_bullets_assaultrifle.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
ITEM.name = "돌격소총 탄환"
ITEM.model = "models/items/arccw/rifle_ammo.mdl"
ITEM.description = "돌격소총에 사용되는 탄환 더미가 들어 있습니다."
ITEM.category = "탄환"
ITEM.ammo = "ar2" -- type of the ammo
ITEM.ammoAmount = 30 -- amount of the ammo

ITEM.colorAppendix = {["blue"] = "탄환을 사용하기 위해서는 탄창에 넣어야 합니다. 드래그로 상호작용이 가능합니다."}

ITEM.maxStackSize = 300 -- amount of the ammo
ITEM.bInstanceMaxstack = true