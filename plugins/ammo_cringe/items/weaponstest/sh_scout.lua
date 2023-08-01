-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_scout.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "SSG-08"
ITEM.description = "기존과 달리 총몸 상부의 레일이 굉장히 길어진 오스트리아제 소총입니다."
ITEM.model = "models/weapons/arccw_go/v_snip_ssg08.mdl"
ITEM.class = "arccw_go_ssg08"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "볼트액션"
ITEM.baseDamage = 75
ITEM.armorPen = 0.4
ITEM.width = 5
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(156.39, -274.92, 2.04),
  ang = Angle(1.37, 483.18, 0),
  fov = 7.2
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_sniper_10rnd"] = true}