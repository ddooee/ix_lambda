-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_awp.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "AWSM"
ITEM.description = "AWM의 파생형인 일명 L115A3라 불리우는 영국제 소총입니다. 조준경이 총신에 고정이 잘 안되는 문제와 총열 내부가 불량해 약간의 품질 문제가 있긴 하지만 사용과 성능에는 전혀 지장이 없습니다."
ITEM.model = "models/weapons/arccw_go/v_snip_awp.mdl"
ITEM.class = "arccw_go_awp"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "볼트액션"
ITEM.baseDamage = 112
ITEM.armorPen = 0.5
ITEM.width = 5
ITEM.height = 2
ITEM.width = 5
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(156.39, -274.92, 2.04),
  ang = Angle(1.37, 483.18, 0),
  fov = 7.2
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_sniper_10rnd"] = true}