-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_pkpvolk.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "볼케드 PKP"
ITEM.description = "독특한 구조의 총열을 가지고 장시간 사격에도 버틸 수 있게 효과적 냉각을 극대화한 디자인이 강점인 러시아제 기관총입니다. 이 총은 개량을 거쳐 펄스 탄약과 비슷한 특수 형태의 에너지 탄약을 사용합니다."
ITEM.model = "models/weapons/arccw/fml/w_volked_pkp.mdl"
ITEM.class = "arccw_fml_volk_pkp"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "경기관총"
ITEM.baseDamage = 13
ITEM.armorPen = 0.4
ITEM.width = 5
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(28.51, -395.29, 11.73),
  ang = Angle(1.05, 453.46, 0),
  fov = 5.1
}

ITEM.magazines = {["magazine_volk_100rnd"] = true}