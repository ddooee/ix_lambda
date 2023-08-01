FACTION.name = "신인류 감시부대"
FACTION.isDefault = true
FACTION.color = Color(150, 50, 50, 255)
FACTION.scoreboardClass = "신인류 감시부대"
FACTION.models = {"models/7 hour/combine_soldier_old_b.mdl"}
FACTION.weapons = {"rappel_gear"}

FACTION.runSounds = {[0] = "NPC_CombineS.RunFootstepLeft", [1] = "NPC_CombineS.RunFootstepRight"}
FACTION.typingBeeps = {"NPC_MetroPolice.Radio.On", "NPC_MetroPolice.Radio.Off"}
FACTION.genders = {1}

FACTION.isGloballyRecognized = true
FACTION.dontNeedFood = true
FACTION.canSeeWaypoints = true
FACTION.defaultLevel = 3
FACTION.startSkills = {
	["athletics"] = 5,
	["acrobatics"] = 5,
	["guns"] = 5,
	["unarmed"] = 5,
	["medicine"] = 5,
	["meleeguns"] = 5,
	["impulse"] = 5,
}
FACTION.listenChannels = {
	["overwatch"] = 1,
}

function FACTION:GetModels(client, gender)
	return self.models[1]
end

function FACTION:GetDefaultName(client)
	return "OW:OPERATOR-" .. math.random(1, 99), true
end

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	inventory:Add("ar2", 1)
	inventory:Add("ar2ammo", 4)
	character:CreateIDCard("ota_access")
	character:SetData("heavy", true)
end

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[character:GetGender()])
end

function FACTION:GetModels(client, gender)
	return self.models
end

FACTION.npcRelations = {
	["npc_turret_floor"] = D_NU,
	["npc_combine_camera"] = D_NU,
	["npc_turret_ceiling"] = D_NU,
	["npc_rollermine"] = D_NU,
	["npc_helicopter"] = D_NU,
	["npc_combinegunship"] = D_NU,
	["npc_strider"] = D_NU,
	["npc_metropolice"] = D_LI,
	["npc_hunter"] = D_NU,
	["npc_combine_s"] = D_NU,
	["CombinePrison"] = D_NU,
	["CombineElite"] = D_NU,
	["npc_manhack"] = D_LI
}

FACTION_OTA = FACTION.index

Schema:SetFactionGroup(FACTION_OTA, FACTION_GROUP_OTA)