-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_mac10.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "MAC-10"
ITEM.description = "오픈-볼트 방식의 텔레스코픽-볼트가 총열을 둘러싸는 구조로 되어 있는 미국제 기관단총입니다. 총기 자체의 길이가 엄청나게 짧습니다. 독특한 이중 구조로 소리는 줄이면서도 탄속은 저하시키지 않는 소음기가 기본적으로 부착되어 있습니다. 또한 극도로 단순화된 내부 구조 덕분에 내구성이 높습니다."
ITEM.model = "models/weapons/arccw_go/v_smg_mac10.mdl"
ITEM.class = "arccw_go_mac10"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "기관단총"
ITEM.baseDamage = 6
ITEM.armorPen = 0.3
ITEM.width = 3
ITEM.height = 2
ITEM.iconCam = {
	pos = Vector(0, -200, 0),
	ang = Angle(1.39, 454.52, 0),
	fov = 5.51
}

ITEM.magazines = {["magazine_mac10_30rnd"] = true}