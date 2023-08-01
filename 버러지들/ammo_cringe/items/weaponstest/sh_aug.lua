-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_aug.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "AUG A3"
ITEM.description = "대부분이 플라스틱으로 되어 기존 총기를 개선한 오스트리아제 소총입니다. 레일-마운트의 형태가 변경되었고 노리쇠 멈치가 추가되었으며 접이식 수직 손잡이 대신 피카티니 레일 핸드-가드가 장착되어 있습니다."
ITEM.model = "models/weapons/arccw_go/v_rif_aug.mdl"
ITEM.class = "arccw_go_aug"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "돌격소총"
ITEM.baseDamage = 17
ITEM.armorPen = 0.45
ITEM.width = 4
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(0, -200, 0),
  ang = Angle(1.31, 455.46, 0),
  fov = 11.18
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_aug_36rnd"] = true}