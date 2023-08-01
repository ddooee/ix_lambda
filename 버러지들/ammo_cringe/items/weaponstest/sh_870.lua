-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_870.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
ITEM.name = "M870"
ITEM.description = "단순하면서도 기본에 충실한 수동식 하부 장탄, 측면 배출 구조를 갖추고 있는 미국제 산탄총입니다. 발사 후 약실에 남은 탄피를 측면의 배출구로 빠지게 하고 새로운 차탄을 끌어올리는 펌프-액션 방식의 토대인 작동 막대가 좌우 한 쌍으로 구성되어 있어 확실한 조작성과 내구성을 보장합니다."
ITEM.class = "arccw_go_870"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "산탄총"
ITEM.baseDamage = 5
ITEM.armorPen = 0.3
ITEM.width = 3
ITEM.height = 2
ITEM.model = "models/weapons/arccw_go/v_shot_870.mdl"
ITEM.iconCam = {
  pos = Vector(0, -200, 0),
  ang = Angle(1.34, 455.65, 0),
  fov = 8.71
}

ITEM.magazines = {["magazine_model870_8rnd"] = true}