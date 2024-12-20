local PLUGIN = PLUGIN

PLUGIN.name = "Territory Capture"
PLUGIN.author = "Vintage Thief"
PLUGIN.description = "Plugin allows factions to capture zones of a map and to take control over it in order to get loot from factions' lootboxes"

ix.util.Include("sv_hooks.lua")

do
	ix.command.Add("SetTerritory", {
		description = "Set a territory to a faction.",
		superAdminOnly = true,
		arguments = {
			ix.type.string,
			ix.type.string
		},
		OnRun = function(self, client, territory, faction)
			ix.config.Set(territory, faction)
		end
	})
end


-- NUMs MEANINGS:
-- 1 = OVERWATCH | 2 = PLA | 3 = ALASKA | 4 = WOLVES | 5 = LIBERTY_UNION | 6 = RENEGADES | INTS CAN BE CHANGABLE TIME TO TIME

ix.config.Add("z_metro", 2, "What faction controls the territory?", nil, {
    data = {min = 0, max = 10},
    category = "territory_capture"
})
ix.config.Add("z_otabridge", 1, "What faction controls the territory?", nil, {
    data = {min = 0, max = 10},
    category = "territory_capture"
})
ix.config.Add("z_village", 0, "What faction controls the territory?", nil, {
    data = {min = 0, max = 10},
    category = "territory_capture"
})
ix.config.Add("z_destroyedvillage", 0, "What faction controls the territory?", nil, {
    data = {min = 0, max = 10},
    category = "territory_capture"
})
ix.config.Add("z_canalspit", 0, "What faction controls the territory?", nil, {
    data = {min = 0, max = 10},
    category = "territory_capture"
})
ix.config.Add("z_fisherhouse", 0, "What faction controls the territory?", nil, {
    data = {min = 0, max = 10},
    category = "territory_capture"
})
ix.config.Add("z_mines", 0, "What faction controls the territory?", nil, {
    data = {min = 0, max = 10},
    category = "territory_capture"
})

ix.config.Add("reward_time", 86400, "How much time does it take to take a new reward from a vault?", nil, {
	data = {min = 15, max = 86400},
	category = "territory_capture"
})

--[[
	What can different zones give to a vault?
	z_metro = ammo, tokens, healthkits.
	z_otrabridge = ammo, healthkits.
	z_village = tokens, food, drinks.
	z_destroyedvillage = healthkit, seeds.
	z_canalspit = tokens, garbage.
	z_fisherhouse = food, drinks.
	z_mines = metal resources, tokens.
]]

PLUGIN.loot_ammo = {
	["bullets_assaultrifle"] = math.random(2, 5),
	["bullets_buckshot"] = math.random(1, 2),
	["bullets_pulse"] = math.random(0, 3),
	["bullets_smg1"] = math.random(1, 3),
	["bullets_pistol"] = math.random(1, 3),
	["bullets_lmg"] = math.random(1, 3) 
}
PLUGIN.loot_tokens = {
	["tokens"] = math.random(25, 50)
}
PLUGIN.loot_healthkits = {
	["bandage"] = math.random(2, 4),
	["health_vial"] = math.random(1, 3),
	["health_kit"] = math.random(1, 2)
}
PLUGIN.loot_food = {
	["baked_beans"] = math.random(1, 4),
	["union_branded_chinese_takeout"] = math.random(1, 4),
	["potato"] = math.random(1, 4),
	["carrot"] = math.random(1, 4),
	["sandwich"] = math.random(1, 4)
}
PLUGIN.loot_drinks = {
	["can_with_water"] = math.random(1, 4),
	["plastic_bottle_of_water"] = math.random(1, 4),
	["plastic_jar_of_water"] = math.random(1, 4),
	["purified_water"] = math.random(1, 4)
}