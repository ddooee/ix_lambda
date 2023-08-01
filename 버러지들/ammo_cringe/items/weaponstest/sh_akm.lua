-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_akm.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
ITEM.name = "AKM"
ITEM.description = "기존 AK-47의 단점을 보완하고 경량화 되어 분말-야금이나 로스트-왁스 방식으로 가공한 부품들로 개선된 소련제 소총입니다."
ITEM.model = "models/weapons/w_rif_ak47.mdl"
ITEM.class = "arccw_go_ak47"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "돌격소총"
ITEM.baseDamage = 13
ITEM.armorPen = 0.3
ITEM.width = 4
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(0, -200, 0),
  ang = Angle(1.31, 455.46, 0),
  fov = 11.18
}

ITEM.magazines = {["magazine_ak_30rnd"] = true}