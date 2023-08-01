-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_famas.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "FAMAS"
ITEM.description = "휴대가 쉽도록 채택한 불펍 구조로 되어 있는 프랑스제 소총입니다. 덕분에 총신을 단축하지 않고도 전장을 줄였습니다. 독특한 롤러 지연식 블로우-백 방식에 수신기, 볼트, 볼트 캐리어가 2개의 돌출부를 가진 레버로 연결된 구조로 되어 있습니다."
ITEM.model = "models/weapons/arccw_go/v_rif_famas.mdl"
ITEM.class = "arccw_go_famas"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "돌격소총"
ITEM.baseDamage = 18
ITEM.armorPen = 0.3
ITEM.width = 4
ITEM.height = 2
ITEM.width = 4
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(0, -200, 0),
  ang = Angle(1.31, 455.46, 0),
  fov = 11.18
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_famas_30rnd"] = true}