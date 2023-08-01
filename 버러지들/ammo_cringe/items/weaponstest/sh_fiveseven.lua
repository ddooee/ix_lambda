-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_fiveseven.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "파이브-세븐"
ITEM.description = "타 권총에 비하여 관통력이 우수하고 탄창 용량이 증가한 벨기에제 권총입니다. 반동 또한 낮아 휴대하기 쉬우며 프레임은 폴리머 소재를 활용하였고 슬라이드 부분은 다른 권총들과 달리 직접 슬라이드에 결합되는 폐쇄-기구 구조를 갖추고 있지 않습니다."
ITEM.model = "models/weapons/arccw_go/v_pist_fiveseven.mdl"
ITEM.class = "arccw_go_fiveseven"
ITEM.weaponCategory = "sidearm"
ITEM.balanceCat = "권총"
ITEM.baseDamage = 14
ITEM.armorPen = 0.2
ITEM.width = 2
ITEM.height = 2
ITEM.width = 2
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(0, -200, 0),
  ang = Angle(1.32, 455.32, 0),
  fov = 2.67
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_fiveseven_20rnd"] = true}