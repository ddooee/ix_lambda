-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_m4a1.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "M4A1"
ITEM.description = "전장이 짧아 휴대하기 편리하고 경량화로 시가전에서 유리한 미국제 소총입니다. 호환성이 우수하여 부착물 또한 자유자재로 다룰 수 있습니다."
ITEM.model = "models/weapons/arccw_go/v_rif_m4a1.mdl"
ITEM.class = "arccw_go_m4"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "돌격소총"
ITEM.baseDamage = 20
ITEM.armorPen = 0.4
ITEM.width = 4
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(0, -200, 0),
  ang = Angle(1.31, 455.46, 0),
  fov = 11.18
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"

ITEM.magazines = {["magazine_m4_30rnd"] = true}