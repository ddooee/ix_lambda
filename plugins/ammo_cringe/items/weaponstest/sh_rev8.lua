-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_rev8.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "M327-R8"
ITEM.description = "다른 리볼버와는 달리 많은 장탄수를 사용하는 미국제 권총입니다. 빠른 장전을 위해 문-클립 사용이 가능하게 가공되어 있고 방아쇠에 퍼포먼스 센터 튜닝이 기본적으로 되어있어 더블-액션 당김이 부드럽습니다."
ITEM.model = "models/weapons/arccw_go/v_pist_r8_prop.mdl"
ITEM.class = "arccw_go_r8"
ITEM.weaponCategory = "sidearm"
ITEM.balanceCat = "리볼버"
ITEM.baseDamage = 46
ITEM.armorPen = 0.45
ITEM.width = 2
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(0, -200, 0),
  ang = Angle(1.32, 455.32, 0),
  fov = 2.67
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_model327_8rnd"] = true}