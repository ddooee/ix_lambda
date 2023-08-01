-- "gamemodes\\ixhl2rp\\plugins\\arccw\\sh_plugin.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

local PLUGIN = PLUGIN;

PLUGIN.name = "ArcCW Weapons & Attachments";
PLUGIN.description = "Adds the weapons and attachments for the ArcCW mod.";
PLUGIN.author = "Gr4Ss & Robert";

ix.lang.AddTable("korean", {
	["Barska Red Dot (RDS)"] = "바르스카 레드 닷 조준경",
	["Micro T1 (LP)"] = "마이크로 T1 조준경",
	["EOTech 553 (RDS)"] = "이오텍 553 조준경",
	["CompM4"] = "콤프M4 조준경",
	["Hunter Compact (2.5x)"] = "헌터 콤팩트 2.5배율 조준경",
	["ACOG TA50 (3x)"] = "ACOG TA50 3배율 조준경",
	["PM-II (7x)"] = "PM-II 7배율 조준경",
	["Arctic Warfare (10x)"] = "아크틱 워페어 10배율 조준경",
	["TGP-A Suppressor"] = "TGP-A 소음기",
	["SSQ Suppressor"] = "SSQ 소음기",
	["3mW Laser"] = "3mW 레이저 포인터",
	["Stubby Foregrip"] = "전방 손잡이",
	["Battle Foregrip"] = "전투 손잡이",
	["Snatch Foregrip"] = "스내치 손잡이",
	["Bipod"] = "양각대",
	["Trijicon RMR (LP)"] = "트리지콘 RMR 조준경",
})

if (!ArcCW) then return end
for k, v in pairs(ArcCW.AttachmentTable) do
    local ITEM = ix.item.Register(k, nil, false, nil, true)
    ITEM.name = v.PrintName
    ITEM.category = "Attachment (ArcCW)"
    ITEM.model = "models/props_lab/box01a.mdl"
    ITEM.description = "작은 크기의 박스 안에 부착물 '"..v.PrintName.."'이(가) 들어있습니다."
	ITEM.isAttachment = true 
	ITEM.isArcCW = true	
end