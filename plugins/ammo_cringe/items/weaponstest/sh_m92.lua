-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_m92.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "M92FS"
ITEM.description = "기존 모델을 개량하여 싱글-액션 방식에서 더블-액션 방식으로 변경된 이탈리아제 권총입니다. 구분하기 어려웠던 버튼식 안전 장치도 레버형으로 변경되었습니다. 슬라이드의 작동이 타 브라우닝식 쇼트-리코일 구조를 적용한 권총보다 부드럽습니다. 총열이 내려가면서 슬라이드와의 폐쇄가 풀리는 방식 때문에 슬라이드를 당길 때 총열이 일직선으로 뒤로 후퇴해 저항감이 덜합니다."
ITEM.model = "models/weapons/arccw_go/v_pist_m9.mdl"
ITEM.class = "arccw_go_m9"
ITEM.weaponCategory = "sidearm"
ITEM.balanceCat = "권총"
ITEM.baseDamage = 11
ITEM.armorPen = 0.2
ITEM.width = 2
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(0, -200, 0),
  ang = Angle(1.32, 455.32, 0),
  fov = 2.67
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_m92fs_15rnd"] = true}