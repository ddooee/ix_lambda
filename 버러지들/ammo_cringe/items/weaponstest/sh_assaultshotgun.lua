-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_assaultshotgun.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "OSAPS-3"
ITEM.description = "언뜻 보아도 크고 무거워보이는 콤바인제 산탄총입니다. 총구에서 뿜어져나오는 무참한 산탄 연발은 눈 앞에 있는 적을 분쇄하기에 충분합니다."
ITEM.model = "models/weapons/srifle/w_srifle.mdl"
ITEM.class = "arccw_spulse"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "산탄총"
ITEM.baseDamage = 10
ITEM.armorPen = 0.4
ITEM.width = 4
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(-12.64, 188.56, 17.47),
  ang = Angle(4.68, 273.11, 0),
  fov = 12.39
}
ITEM.replaceOnDeath = "comp_combine_weapon_parts"
ITEM.magazines = {["magazine_oais_12rnd"] = true}