-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_p90.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "P90"
ITEM.description = "내부 구조가 단순하여 탄 걸림 문제가 적고 소총과 비슷한 성능을 내는 벨기에제 기관단총입니다. 불펍 구조에 부피를 줄인 디자인 덕분에 휴대성 또한 우수합니다."
ITEM.model = "models/weapons/arccw_go/v_smg_p90.mdl"
ITEM.class = "arccw_go_p90"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "기관단총"
ITEM.baseDamage = 9
ITEM.armorPen = 0.4
ITEM.numShots = 5
ITEM.width = 3
ITEM.height = 2
ITEM.iconCam = {
	pos = Vector(0, -200, 0),
	ang = Angle(1.39, 454.52, 0),
	fov = 5.51
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_p90_50rnd"] = true}