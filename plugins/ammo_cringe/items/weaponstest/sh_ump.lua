-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_ump.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "UMP-45"
ITEM.description = "롤러 지연 블로우-백 방식을 배제하고 스트레이트 블로우-백 방식을 채택한 독일제 기관단총입니다. 클로즈드-볼트는 유지하되 프리플로팅-배럴을 적용해서 높은 단발 명중률을 유지했습니다."
ITEM.model = "models/weapons/arccw_go/v_smg_ump45.mdl"
ITEM.class = "arccw_go_ump"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "기관단총"
ITEM.baseDamage = 11
ITEM.armorPen = 0.3
ITEM.width = 3
ITEM.height = 2
ITEM.iconCam = {
	pos = Vector(0, -200, 0),
	ang = Angle(1.39, 454.52, 0),
	fov = 5.51
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_ump_25rnd"] = true}