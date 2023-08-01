-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_mp7a1.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "MP7A1"
ITEM.description = "쇼트-스트로크 가스 피스톤 구조의 독일제 기관단총입니다. 폴리머를 대량으로 사용해 무게가 가볍고, 한 손으로 쏠 수 있을 정도로 반동이 적습니다. 또한 소음기를 부착 시 성능 또한 매우 우수합니다."
ITEM.model = "models/weapons/arccw_go/v_smg_mp7.mdl"
ITEM.class = "arccw_go_mp7"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "기관단총"
ITEM.baseDamage = 12
ITEM.armorPen = 0.15
ITEM.width = 3
ITEM.height = 2
ITEM.iconCam = {
	pos = Vector(0, -200, 0),
	ang = Angle(1.39, 454.52, 0),
	fov = 5.51
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_mp_30rnd"] = true}