-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_tacticalrifle.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "OSITR"
ITEM.description = "오버워치 표준군의 무장을 대체하기 위해 설계된 콤바인제 소총입니다. 다른 총기들과는 달리 특수한 5-연발 버스트를 사용할 수 있습니다."
ITEM.model = "models/weapons/oicw/w_oicw.mdl"
ITEM.class = "arccw_oicw"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "돌격소총"
ITEM.baseDamage = 15
ITEM.armorPen = 0.1
ITEM.width = 4
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(-651.9, 34.32, 11.62),
  ang = Angle(0.77, 356.24, 0),
  fov = 3.04
}

ITEM.replaceOnDeath = "comp_combine_weapon_parts"

ITEM.magazines = {["magazine_otar_60rnd"] = true}

function ITEM:OnDoDeathDrop(client, items, droppedItems)
    self:SetData("BioLocked", true)
end
