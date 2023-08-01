-- "gamemodes\\ixhl2rp\\plugins\\combinedeployables\\items\\sh_manhack.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "맨핵"
ITEM.model = "models/manhack.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.description = "푸른색을 띄는 외계 합금의 몸체에 달려있는 날카로운 칼날이 인상적입니다."
ITEM.weaponCategory = "deployable"

ITEM.functions.Deploy = {
	OnRun = function(item)
			local grd = ents.Create("npc_manhack")
			local client = item.player

			local data = {}
				data.start = client:GetShootPos()
				data.endpos = data.start + client:GetAimVector()*96
				data.filter = client
			local trace = util.TraceLine(data)

			if client:Team() == FACTION_CP or client:Team() == FACTION_OTA then
				if (trace.HitPos) then
					grd:SetPos(trace.HitPos + trace.HitNormal * 10)
					grd:Spawn()
				end
			else
				client:Notify("당신은 콤바인 병력이 아닙니다.")
			end

			for k, v in pairs(player.GetAll()) do
				if v:Team() == FACTION_CP or v:Team() == FACTION_OTA then
					grd:AddEntityRelationship(v, D_LI, 99)	
				else
					grd:AddEntityRelationship(v, D_HT, 99)	
				end
			end

			local phys = grd:GetPhysicsObject()

			if (item.entConfigure) then
				item:entConfigure(grd)
			end
		return true
	end
}