ITEM.name = "제세동기"
ITEM.model = "models/props_lab/box01a.mdl"
ITEM.width = 1
ITEM.height = 2
ITEM.description = "대상의 심장에 전기 자극을 주어 다시금 제 기능을 할 수 있도록 합니다."
ITEM.price = 800
ITEM.flag = "A"

ITEM.functions.use = {
	name = "소생",
	icon = "cellar/ui/weaponry/shockdmg.png",
	OnRun = function(item)
		local ply = item.player
		local traceRes = ply:GetEyeTrace()
		if ( IsValid( traceRes.Entity ) and traceRes.Entity:GetClass( ) == "prop_ragdoll" ) then
			print(traceRes.Entity)
			local traceEnt = traceRes.Entity
			if ( traceEnt.isDeadBody ) then
				print(traceEnt)
				if not ( IsValid( traceEnt.player ) ) then
					ply:notify( "접속이 끊어진 플레이어를 소생할 수 없습니다." )
					return false
				end

				traceEnt.player:UnSpectate()
				traceEnt.player:SetNetVar("resurrected", true)
				traceEnt.player:Spawn()
				traceEnt.player:SetHealth( 1 ) 
				traceEnt.player:SetPos(traceEnt:GetPos())
				ply:EmitSound("awcm/machines/defib_attempt.mp3")
				ply:Notify( "당신은 "..traceEnt.player:GetName().."을(를) 소생하였습니다." )
				traceEnt.player:Notify( "당신은 "..ply:GetName().."에 의해 소생되었습니다." )

			end
		end
		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity)) and (item:GetData("stashcoordinates", nil) == nil) and item.invID == item:GetOwner():GetCharacter():GetInventory():GetID()
	end
}