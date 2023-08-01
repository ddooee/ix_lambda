-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_g3.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "G3"
ITEM.description = "정밀성 덕택에 초탄 명중률이 매우 우수하다고 알려져 있는 독일제 소총입니다. 블로우-백 방식으로 탄이 총구를 떠나기 직전까지 노리쇠가 잠겨지는 클로즈-볼트 방식입니다. 또한 탄피 배출을 원활하게 하기 위해 각인-약실을 채택했습니다."
ITEM.model = "models/weapons/arccw_go/v_rif_g3.mdl"
ITEM.class = "arccw_go_g3"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "지정사수소총"
ITEM.baseDamage = 66
ITEM.armorPen = 0.25
ITEM.width = 4
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(0, -200, 0),
  ang = Angle(1.31, 455.46, 0),
  fov = 11.18
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_dmr_20rnd"] = true}