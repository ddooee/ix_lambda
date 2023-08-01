-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_m249.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "M249"
ITEM.description = "탄띠 급탄 방식을 따르면서도 비상 상황을 대비한 탄창 삽입구가 따로 마련되어 있는 미국제 기관총입니다. 하지만 설계상의 문제로 탄창을 꽂으면 탄 걸림이 빈발합니다. 총열 덮개 앞의 고리형 부착대를 통해 상위 구경의 차량용 거치대와의 결합이 가능하며 총열 위에 철제 열 차폐구를 두었습니다."
ITEM.model = "models/weapons/arccw_go/v_mach_m249para.mdl"
ITEM.class = "arccw_go_m249para"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "경기관총"
ITEM.baseDamage = 10
ITEM.armorPen = 0.3
ITEM.width = 5
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(0, -200, 0),
  ang = Angle(1.63, 458.44, 0),
  fov = 13.06
}
ITEM.replaceOnDeath = "comp_heavy_weapon_parts"
ITEM.magazines = {["magazine_m249_150rnd"] = true}