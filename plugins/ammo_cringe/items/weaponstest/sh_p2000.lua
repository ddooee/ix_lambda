-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_p2000.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "P2000"
ITEM.description = "기존의 콘트롤-레버를 없앤 독일제 권총입니다. 인체 공학적 설계로 호신용에 매우 적합하며 양 손으로 사용 가능하며 슬라이드-릴리스나 메거진-드랍도 모두 양 쪽으로 되어 있습니다."
ITEM.model = "models/weapons/arccw_go/v_pist_p2000.mdl"
ITEM.class = "arccw_go_p2000"
ITEM.weaponCategory = "sidearm"
ITEM.balanceCat = "권총"
ITEM.baseDamage = 6
ITEM.armorPen = 0.1
ITEM.width = 2
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(296.84, -408.4, 29.98),
  ang = Angle(3.83, 487.61, 0),
  fov = 1.14
}

ITEM.magazines = {["magazine_p2000_13rnd"] = true}