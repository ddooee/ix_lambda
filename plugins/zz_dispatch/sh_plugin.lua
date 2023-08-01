local PLUGIN = PLUGIN
PLUGIN.name = "Dispatch System"
PLUGIN.author = "Schwarz Kruppzo"
PLUGIN.description = ""

dispatch = dispatch or {
	name_format = "C32:i3.%s%s-%i",
	--unassigned_tag = "UNIT",
	available_tags = {
		"UNIT",
		"DEFENDER",
		"HERO",
		"JURY",
		"KING",
		"LINE",
		"PATROL",
		"QUICK",
		"ROLLER",
		"STICK",
		"TAP",
		"UNION",
		"VICTOR",
		"XRAY",
		"YELLOW",
		"VICE"
	},
	squads = {}
}

dispatch.mpf_ranks = {
	[1] = {
		name = "Regular",
		class = function()
			return CLASS_MPF
		end
	},
	[2] = {
		name = "Rank Leader",
		class = function()
			return CLASS_RL
		end
	},
}

dispatch.stability_codes = {
	[1] = {
		name = "안정",
		text = "사회안정성 보장됨",
		color = Color(128, 255, 128),
		isHidden = true
	},
	[2] = {
		name = "경계",
		text = "사회안정성 불안정",
		color = Color(255, 200, 32)
	},
	[3] = {
		name = "위험",
		text = "사회안정성 붕괴됨",
		color = Color(255, 32, 64)
	},
	[4] = {
		name = "대피",
		text = "사회안정성 소실됨		///		지정된 위치로 이동",
		color = Color(225, 225, 225)
	},
}

dispatch.snd_waypoints = {
	gun = {
		Sound("npc/overwatch/radiovoice/allunitsdeliverterminalverdict.wav"),
		Sound("npc/overwatch/radiovoice/posession69.wav"),
		Sound("npc/overwatch/radiovoice/suspectisnow187.wav"),
		Sound("npc/overwatch/radiovoice/weapon94.wav")
	},
	death = {
		Sound("npc/overwatch/radiovoice/assault243.wav"),
		Sound("npc/overwatch/radiovoice/destrutionofcpt.wav"),
		Sound("npc/overwatch/radiovoice/engagingteamisnoncohesive.wav"),
		Sound("npc/overwatch/radiovoice/lostbiosignalforunit.wav")
	},
	attack = {
		Sound("npc/overwatch/radiovoice/lockdownlocationsacrificecode.wav"),
		Sound("npc/overwatch/radiovoice/immediateamputation.wav"),
		Sound("npc/overwatch/radiovoice/failuretotreatoutbreak.wav"),
		Sound("npc/overwatch/radiovoice/allunitsbeginwhitnesssterilization.wav"),
		Sound("npc/overwatch/radiovoice/allunitsapplyforwardpressure.wav")
	},
	factory = {
		Sound("npc/overwatch/radiovoice/workforceintake.wav")
	},
	hazard = {
		Sound("npc/overwatch/radiovoice/infection.wav"),
		Sound("npc/overwatch/radiovoice/infestedzone.wav")
	},
	protect = {
		Sound("npc/overwatch/radiovoice/fmil_region 073.wav"),
		Sound("npc/overwatch/radiovoice/deservicedarea.wav")
	},
	regroup = {
		Sound("npc/overwatch/radiovoice/allunitsreturntocode12.wav"),
		Sound("npc/overwatch/radiovoice/accomplicesoperating.wav")
	},
	poi = {
		Sound("npc/overwatch/radiovoice/investigateandreport.wav"),
		Sound("npc/overwatch/radiovoice/officerclosingonsuspect.wav"),
		Sound("npc/overwatch/radiovoice/recalibratesocioscan.wav"),
		Sound("npc/overwatch/radiovoice/reportplease.wav"),
		Sound("npc/overwatch/radiovoice/beginscanning10-0.wav")
	},
	warn = {
		Sound("npc/overwatch/radiovoice/publicnoncompliance507.wav"),
		Sound("npc/overwatch/radiovoice/preparetoinnoculate.wav"),
		Sound("npc/overwatch/radiovoice/politistablizationmarginal.wav"),
		Sound("npc/overwatch/radiovoice/level5anticivilactivity.wav"),
		Sound("npc/overwatch/radiovoice/anticitizen.wav")
	},
}

function dispatch.Rank(id)
	return dispatch.mpf_ranks[id] or dispatch.mpf_ranks[1]
end

function dispatch.GetRank(character)
	return ix.class.list[character:GetClass()].rank or 0
end

if SERVER then
	ix.log.AddType("squadCreate", function(char, tagname)
		return string.format("%s 이(가) '%s'에 합류했습니다.", char:GetOriginalName(), tagname)
	end)

	ix.log.AddType("squadDestroy", function(char, tagname)
		return string.format("%s 이(가) '%s'을(를) 해산했습니다.", char:GetOriginalName(), tagname)
	end)

	ix.log.AddType("squadLeader", function(char, tagname, target)
		return string.format("%s 은(는) '%s'을)를 %s로 지정하였습니다.", char:GetName(), tagname, target:GetName())
	end)

	ix.log.AddType("squadMove", function(char, name, tagname)
		return string.format("%s переместил %s в ПГ '%s'", char:GetName(), name, tagname)
	end)

	ix.log.AddType("squadReward", function(char, target, points, reason)
		return string.format("%s наградил %s %s очками стерелизации (%s)", char:GetName(), target:GetName(), points, reason)
	end)

	ix.log.AddType("squadRewardAll", function(char, tagname, points, reason)
		return string.format("%s наградил ПГ '%s' %s очками стерелизации (%s)", char:GetName(), tagname, points, reason)
	end)

	ix.log.AddType("squadObserve", function(char, target)
		return string.format("%s наблюдает за %s", char:GetName(), target:GetName())
	end)
end

ix.util.Include("meta/sh_squads.lua")

function dispatch.GetMemberLimit()
	return 5
end

function dispatch.GetSquads()
	return dispatch.squads
end

function dispatch.GetReceivers()
	local recvs = {}

	for _, client in ipairs(player.GetAll()) do
		if client:IsCombine() then
			table.insert(recvs, client)
		end
	end

	return recvs
end

function dispatch.GetStability()
	return GetGlobalInt("stabilitycode", 1)
end

function dispatch.StabilityCode()
	return dispatch.stability_codes[dispatch.GetStability()] or dispatch.stability_codes[1]
end

function dispatch.GetFreeSquadTag()
	for tag = 1, #dispatch.available_tags do
		if dispatch.squads[tag] == nil then
			return tag
		end
	end

	return false
end

function dispatch.CreateSquad(leader, tagID, static, noLog)
	if !static and getmetatable(leader) != ix.meta.character then
		if !leader or !leader:GetCharacter() then
			return false
		end

		leader = leader:GetCharacter()
	end

	tagID = tagID or dispatch.GetFreeSquadTag()

	if !tagID then
		return false
	end

	local SQUAD = setmetatable({}, ix.meta.squad)
	SQUAD:Setup(tagID, leader, static)

	dispatch.squads[tagID] = SQUAD

	if !static and SERVER then
		SQUAD:Sync()
	end

	return SQUAD
end

dispatch.unassigned_squad = dispatch.unassigned_squad or dispatch.CreateSquad(nil, 1, true)

ix.util.Include("sh_interactions.lua")
ix.util.Include("cl_waypoints.lua")
ix.util.Include("cl_hooks.lua")
ix.util.Include("sh_spectate.lua")
ix.util.Include("sv_interactions.lua")
ix.util.Include("sv_waypoints.lua")
ix.util.Include("sv_hooks.lua")
ix.util.Include("sv_crc_saving.lua")

properties.Add("camera_setname", {
	MenuLabel = "Set Camera Name",
	Order = 400,
	MenuIcon = "icon16/lock_edit.png",

	Filter = function(self, entity, client)
		if !dispatch.GetCameraData(entity:GetClass()) then return false end
		if !gamemode.Call("CanProperty", client, "camera_setname", entity) then return false end

		return true
	end,

	Action = function(self, entity)
		Derma_StringRequest("카메라의 새로운 이름을 입력하십시오.", "", "", function(text)
			self:MsgStart()
				net.WriteEntity(entity)
				net.WriteString(text)
			self:MsgEnd()
		end)
	end,

	Receive = function(self, length, client)
		local entity = net.ReadEntity()

		if !IsValid(entity) then return end
		if !self:Filter(entity, client) then return end

		local name = net.ReadString()
		/*
		if entity:GetClass() != "ix_combinelock" then
			entity.SaveCRC = nil
			dispatch.SetupCRC(entity)
		end
		*/

		entity:SetNetVar("cam", name)
		
		if entity:GetClass() == "npc_combine_camera" then
			PLUGIN:SaveData()
		end
	end
})

ix.lang.AddTable("russian", {
	stabilityChanged = "상태 코드를 성공적으로 변경했습니다!",
	waypointCooldown = "새 웨이포인트를 추가하기 전에 잠시 기다려야 합니다!",
	addedWaypoint = "성공적으로 웨이포인트를 추가했습니다!",
	combineNoAccess = "이 명령어를 사용할 수 없습니다.",
	stabilityCmd = "상태 변경 (1-4: 녹색에서 검은색)",
	squadCreated = "성공적으로 분대를 생성했습니다.",
	dispatchReward = "%s에게 %s 살균 포인트를 주었습니다. (%s)!",
	dispatchRewardAll = "%s наградил Вашу ПГ %s очками стерелизации (%s)!",
	dispatchMinus = "%s 은(는) %s 살균 점수를 차감하였습니다. (%s)!",
	dispatchMinusAll = "%s는 PG%s 삭제 점수 (%s) 에 벌금을 부과했습니다!"
})

ix.command.Add("StabilityCode", {
	description = "@stabilityCmd",
	arguments = {
		ix.type.number
	},
	OnRun = function(self, client, index)
		if !client:IsCombine() or client:GetCharacter():ReturnDatafilePermission() < 4 then
			return false
		end

		local id = math.Clamp(index, 1, #dispatch.stability_codes)

		SetGlobalInt("stabilitycode", id)

		return "@stabilityChanged"
	end
})

ix.command.Add("SquadCreate", {
	description = "",
	OnRun = function(self, client, index)
		if !client:IsCombine() or client:Team() == FACTION_DISPATCH then
			return "@combineNoAccess"
		end

		local result, _ = dispatch.CreateSquad(client)

		if result then
			ix.log.Add(client:GetCharacter(), "squadCreate", result:GetTagName())

			return "@squadCreated"
		end
	end
})

ix.command.Add("SquadJoin", {
	description = "",
	arguments = {
		ix.type.number
	},
	OnRun = function(self, client, index)
		if !client:IsCombine() or client:Team() == FACTION_DISPATCH then
			return "@combineNoAccess"
		end

		local squad = dispatch.GetSquads()[index]

		if squad then
			squad:AddMember(client:GetCharacter())
		end
	end
})

ix.command.Add("SquadLeave", {
	description = "",
	OnRun = function(self, client)
		if !client:IsCombine() or client:Team() == FACTION_DISPATCH then
			return "@combineNoAccess"
		end

		local character = client:GetCharacter()
		local squad = character:GetSquad()

		if squad and !squad:IsStatic() then
			squad:RemoveMember(character)
		end
	end
})

ix.command.Add("Waypoint", {
	description = "@cmdWaypointAdd",
	arguments = {ix.type.string, bit.bor(ix.type.string, ix.type.optional)},
	OnRun = function(self, client, type, text)
		if !client:IsCombine() then
			return "@combineNoAccess"
		end

		if (client.lastWaypointCooldown or 0) > CurTime() then
			return "@waypointCooldown"
		end

		text = text or ""

		local trace = client:GetEyeTraceNoCursor()
		local position = trace.HitPos

		if math.abs(trace.HitNormal.z) > .98 then
			position:Add(Vector(0, 0, 30))
		end

		dispatch.AddWaypoint(position, text, type)

		client.lastWaypointCooldown = CurTime() + 5

		return "@addedWaypoint"
	end
})

sound.Add({
	name = "NPC_CombineCamera.Ping",
	channel = CHAN_VOICE,
	volume = 0.5,
	level = 25,
	pitch = 100,
	sound = "npc/turret_floor/ping.wav"
})

hook.Add("prone.CanEnter", "dispatch", function(client)
	if client:Team() == FACTION_DISPATCH then
		return false
	end
end)