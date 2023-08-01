-- "gamemodes\\ixhl2rp\\plugins\\arccw\\items\\arccw\\sh_pulsecarbine.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "SR-1A"
ITEM.description = "오버워치 부대가 표준적으로 사용하는 콤바인제 소총입니다. AR-2와는 달리 가벼운 장갑을 뚫을 수 있는 탄환을 발사합니다."
ITEM.model = "models/weapons/oar/w_orifle.mdl"
ITEM.class = "arccw_ordinalar2"
ITEM.weaponCategory = "primary"
ITEM.balanceCat = "돌격소총"
ITEM.baseDamage = 22
ITEM.armorPen = 0.6
ITEM.width = 4
ITEM.height = 2
ITEM.iconCam = {
  pos = Vector(-106.92, 352.12, -8.62),
  ang = Angle(-1.77, 645.61, 0),
  fov = 5.89
}

ITEM.replaceOnDeath = "comp_combine_weapon_parts"

ITEM.magazines = {["magazine_pulse_30rnd"] = true}

function ITEM:OnDoDeathDrop(client, items, droppedItems)
    self:SetData("BioLocked", true)
end