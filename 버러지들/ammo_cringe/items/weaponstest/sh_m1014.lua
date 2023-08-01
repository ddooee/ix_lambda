-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_m1014.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "M1014"
ITEM.description = "구조가 복잡하지만 주요 부품들 자체의 내구성이 우수한 이탈리아제 산탄총입니다. 보편화된 반동 작용식이 아닌 스테인리스-강 재질의 피스톤 2개를 약실 바로 앞에 배치시킨 가스압 자동 조절식의 내부 구조를 따르고 있어 안정적인 반-자동 사격은 물론 다양한 탄약도 사용이 가능합니다."
ITEM.model = "models/weapons/arccw_go/v_shot_m1014.mdl"
ITEM.class = "arccw_go_m1014"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "산탄총"
ITEM.baseDamage = 10
ITEM.armorPen = 0.3
ITEM.width = 3
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(0, -200, 0),
  ang = Angle(1.34, 455.65, 0),
  fov = 8.71
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_m1014_6rnd"] = true}