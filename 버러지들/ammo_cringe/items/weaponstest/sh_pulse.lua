-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_pulse.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "AR-2"
ITEM.description = "암흑 에너지를 사용하는 콤바인제 소총입니다. 보통 오버워치의 요원들이 사용합니다."
ITEM.model = "models/weapons/w_IRifle.mdl"
ITEM.class = "arrcw_ar2"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "돌격소총"
ITEM.baseDamage = 22
ITEM.armorPen = 0.65
ITEM.width = 4
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(-275.29, 1173.54, 46.1),
  ang = Angle(2.1, 642.98, 0),
  fov = 1.99
}

ITEM.replaceOnDeath = "comp_combine_weapon_parts"

ITEM.magazines = {["magazine_pulse_30rnd"] = true}

function ITEM:OnDoDeathDrop(client, items, droppedItems)
    self:SetData("BioLocked", true)
end
