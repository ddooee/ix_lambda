-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_mp5a3.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "MP5A3"
ITEM.description = "내부 구조가 정밀하여 이물질에 취약해 야전에서의 신뢰성은 다소 떨어지나, 내구성 하나는 탁월하다고 알려져 있는 독일제 총기입니다. 내부에서 총열이 닿지 않게 하여 명중률을 향상시키고 탄피 배출구 확대로 급탄 불량 확률 또한 감소했습니다."
ITEM.model = "models/weapons/arccw_go/v_smg_mp5.mdl"
ITEM.class = "arccw_go_mp5"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "기관단총"
ITEM.baseDamage = 10
ITEM.armorPen = 0.4
ITEM.width = 3
ITEM.height = 2
ITEM.iconCam = {
	pos = Vector(0, -200, 0),
	ang = Angle(1.39, 454.52, 0),
	fov = 5.51
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_mp_30rnd"] = true}