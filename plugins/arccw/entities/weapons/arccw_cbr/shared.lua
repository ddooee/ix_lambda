-- "gamemodes\\ixhl2rp\\plugins\\arccw\\entities\\weapons\\arccw_cbr\\shared.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "Willard - Overwatch Weapons" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Overwatch DMR"
SWEP.TrueName = "Overwatch Marksman Issue" 

-- Technically you can omit all trivia info, but that's not fun! Do a bit of research and write some stuff in!
SWEP.Trivia_Class = "Marksman Rifle"
SWEP.Trivia_Desc = "Long range rifle used by the Combine in city centers to neutralise dissidents. Or just shooting citizens for sport. Most accurate when zooming in."
SWEP.Trivia_Manufacturer = "The Combine"
SWEP.Trivia_Calibre = "Anti-Materiel Pulse Capsule"
SWEP.Trivia_Mechanism = "Dark Energy Accelerator"
SWEP.Trivia_Country = "Universal Union - Earth Overwatch"
SWEP.Trivia_Year = "Occupation Period 2, 202x"

SWEP.Slot = 3

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "The Combine"
end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/cbr/v_cbr.mdl" 
SWEP.WorldModel = "models/weapons/cbr/w_cbr.mdl"
SWEP.ViewModelFOV = 54

SWEP.Damage = 42
SWEP.DamageMin = 50 -- damage done at maximum range
SWEP.Range = 200 -- in METRES
SWEP.Penetration = 40
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1500 -- projectile or phys bullet muzzle velocity
-- IN M/S
SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 12
SWEP.ReducedClipSize = 4

SWEP.Recoil = 4.5
SWEP.RecoilSide = 0.5
SWEP.RecoilRise = 3


SWEP.Delay = 60 / 110 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 150

SWEP.AccuracyMOA = 0.18 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 800

SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses
SWEP.MagID = "ar21" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 150 -- pitch of shoot sound

SWEP.ShootSound = "weapons/cbr/357_fire3.wav"
SWEP.ShootSoundSilenced = "weapons/ar21/primary.wav"
SWEP.DistantShootSound = "weapons/cbr/357_fire3.wav"

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = nil
SWEP.ShellScale = 0
SWEP.ShellMaterial = nil

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.90
SWEP.SightedSpeedMult = 0.33
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
    Pos = Vector(-5.198, -13.006, 3.571),
    Ang = Angle(0.389, 0.064, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-2, -6, 0)
SWEP.ActiveAng = Angle(2, 0, 0)

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
        Bone = "zf2000_gun", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-3.606, -16.989, 2.882), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 90, 180),
            wpos = Vector(6.099, 0.699, -6.301),
            wang = Angle(171.817, 180-1.17, 0),
        },

        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 180, 0),
    },

    {
        PrintName = "Underbarrel",
        Slot = {"ubgl", "bipod"},
        Bone = "zf2000_gun",
        Offset = {
            vpos = Vector(-3.773, -24.66, 5.808),
            vang = Angle(0, 90, 180),
            wpos = Vector(17, 0.6, -4.676),
            wang = Angle(-10, 0, 180)
        },

    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "zf2000_gun",
        Offset = {
            vpos = Vector(-3.188, -25.681, 4.672), -- offset that the attachment will be relative to the bone
            vang = Angle(0, 90, -90),
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
        Source = "IR_draw",
        Time = 0.4,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    
    ["fire"] = {
        Source = {"fire2", "fire3", "fire4"},
        Time = 0.5,
    },
    ["fire_iron"] = {
        Source = "",
        Time = 0.5,
    },
    ["reload"] = {
        Source = "IR_reload",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 37,
        Checkpoints = {28, 38, 69},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
		SoundTable = {{s = "weapons/ar21/ar2_reload_push.wav", t = 0}},
    },
    ["reload_empty"] = {
        Source = "IR_reload",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 37,
        Checkpoints = {28, 38, 69},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
		SoundTable = {{s = "weapons/ar21/ar2_reload_push.wav", t = 0}},
    },
}