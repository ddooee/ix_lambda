-- "gamemodes\\ixhl2rp\\plugins\\arccw\\entities\\weapons\\arccw_oar\\shared.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "Willard - Overwatch Weapons" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Prototype Pulse Rifle"
SWEP.TrueName = "Overwatch Prototype V952.71.2" 

-- Technically you can omit all trivia info, but that's not fun! Do a bit of research and write some stuff in!
SWEP.Trivia_Class = "Prototype Rifle"
SWEP.Trivia_Desc = "Prototype Pulse-Rifle model that was issued to Ordinals for live fire testing inside the Quarantine Zone during the early years of the occupation."
SWEP.Trivia_Manufacturer = "The Combine"
SWEP.Trivia_Calibre = "Medium Pulse Capsule"
SWEP.Trivia_Mechanism = "Dark Energy Thumper"
SWEP.Trivia_Country = "Universal Union - Earth Overwatch"
SWEP.Trivia_Year = "Occupation Period 2, 202x"

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "The Combine"
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/oar/v_orifle.mdl" 
SWEP.WorldModel = "models/weapons/oar/w_orifle.mdl"
SWEP.ViewModelFOV = 70

SWEP.Damage = 17
SWEP.DamageMin = 9 -- damage done at maximum range
SWEP.Range = 60 -- in METRES
SWEP.Penetration = 15
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 925 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 60
SWEP.ReducedClipSize = 20

SWEP.Recoil = 0.45
SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 0.2


SWEP.Delay = 60 / 540 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 150

SWEP.AccuracyMOA = 4 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 140 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 300

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "oar" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 80 -- pitch of shoot sound

SWEP.ShootSound = "weapons/oar/fire3.wav"
SWEP.ShootSoundSilenced = "weapons/ar21/primary.wav"
SWEP.DistantShootSound = "weapons/oar/ar2.dist1.wav"

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = nil
SWEP.ShellScale = 0
SWEP.ShellMaterial = nil

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.95
SWEP.SightedSpeedMult = 0.65
SWEP.SightTime = 0.33
SWEP.VisualRecoilMult = 1
SWEP.RecoilRise = 1

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-4.841, 0, 2.2),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
	CrosshairInSights = true
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0, 0, 2)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Angle(-7.036, 30.016, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 27

SWEP.AttachmentElements = {

}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Ironsights",
        Slot = {"optic", "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "pulserifle", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2.086, 2.872), -- offset that the attachment will be relative to the bone
            vang = Angle(0, -90, 0),
            wpos = Vector(6.099, 0.699, -6.301),
            wang = Angle(171.817, 180-1.17, 0),
        },

        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 180, 0),
    },

    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "pulserifle",
        Offset = {
            vpos = Vector(0, 12.987, -2.597), -- offset that the attachment will be relative to the bone
            vang = Angle(0, -90, 0),
            wpos = Vector(15.625, -0.1, -6.298),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "Standard Stock"
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "ociw master", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-1.158, -1.022, 2.867), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 90, 0),
            wpos = Vector(6.099, 1.1, -3.301),
            wang = Angle(171.817, 180-1.17, 0),
        },
    },
}

SWEP.Animations = {
    ["idle"] = false,
    ["draw"] = {
        Source = "draw",
        Time = 0.4,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    
    ["fire"] = {
        Source = {"fire1", "fire2", "fire3", "fire4"},
        Time = 0.5,
    },
    ["fire_iron"] = {
        Source = "idle",
        Time = 0.1,
    },
    ["reload"] = {
        Source = "reload",
        Time = 1.7,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 37,
        Checkpoints = {28, 38, 69},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
		SoundTable = {{s = "weapons/oar/ar2_reload.wav", t = 0}},
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 1.7,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 37,
        Checkpoints = {28, 38, 69},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
		SoundTable = {{s = "weapons/oar/ar2_reload.wav", t = 0}},
    },
}