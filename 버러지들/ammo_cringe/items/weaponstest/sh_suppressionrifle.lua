-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_suppressionrifle.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "OSPR2A-EXP"
ITEM.description = "AR-2 보다 더 무겁고 강력한 버전의 콤바인제 소총입니다. 사용자에 따라 이동시 불편함이 동반될 수도 있으며 런처가 포함되어 있지 않습니다."
ITEM.model = "models/weapons/irifle2/w_irifle2.mdl"
ITEM.class = "arccw_ar21"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "돌격소총"
ITEM.baseDamage = 27
ITEM.armorPen = 0.5
ITEM.width = 4
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(-19.67, 199.67, 5.91),
  ang = Angle(1.2, 633.49, 0),
  fov = 10.64
}

ITEM.replaceOnDeath = "comp_combine_weapon_parts"

ITEM.magazines = {["magazine_ospr_24rnd"] = true}

function ITEM:OnDoDeathDrop(client, items, droppedItems)
    self:SetData("BioLocked", true)
end
