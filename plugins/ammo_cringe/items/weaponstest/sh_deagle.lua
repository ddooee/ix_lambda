-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_deagle.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "데저트 이글"
ITEM.description = "가장 강력한 자동 권총으로써 매그넘 탄을 사용하는 미국제 권총입니다. 특정 탄환이 아닌 화력을 강화하기 위해 탄피의 길이를 늘려 화약을 많이 넣은 탄환을 의미합니다. 하지만 탄자가 크고 무겁기에 사거리가 짧고 관통력이 부족합니다."
ITEM.model = "models/weapons/arccw_go/v_pist_deagle.mdl"
ITEM.class = "arccw_go_deagle"
ITEM.weaponCategory = "sidearm"
ITEM.balanceCat = "리볼버"
ITEM.baseDamage = 42
ITEM.armorPen = 0.45
ITEM.width = 2
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(0, -200, 0),
  ang = Angle(1.32, 455.32, 0),
  fov = 2.67
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_eagle_7rnd"] = true}