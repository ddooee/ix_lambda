-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_usp.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "USP-45"
ITEM.description = "휴대하기 좋도록 좀 더 작게 만들어진 독일제 권총입니다. 명중률과 신뢰성이 우수하며 부착물 또한 호환성이 높다는 강점이 있습니다."
ITEM.model = "models/weapons/arccw_go/v_pist_usp.mdl"
ITEM.class = "arccw_go_usp"
ITEM.weaponCategory = "sidearm"
ITEM.balanceCat = "권총"
ITEM.baseDamage = 10
ITEM.armorPen = 0.1
ITEM.width = 2
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(0, -200, 0),
  ang = Angle(1.32, 455.32, 0),
  fov = 2.67
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_usp_15rnd"] = true}