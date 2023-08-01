-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_scarh.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "SCAR-H"
ITEM.description = "모듈식 설계를 따르고 있어 총열 교체 만으로도 CQC 혹은 LB로 전환이 가능한 벨기에제 소총입니다. 반동을 대부분 총기들처럼 뒤로 뱉는게 아닌 앞으로 동작하기 때문에 취급에 주의가 필요합니다. 하지만 총기의 범용성과 다방면에서의 활용을 인정받아 아직 널리 사용되고 있습니다."
ITEM.model = "models/weapons/arccw_go/v_rif_scar.mdl"
ITEM.class = "arccw_go_scar"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "지정사수소총"
ITEM.baseDamage = 66
ITEM.armorPen = 0.35
ITEM.width = 4
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(0, -200, 0),
  ang = Angle(1.31, 455.46, 0),
  fov = 11.18
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_dmr_20rnd"] = true}