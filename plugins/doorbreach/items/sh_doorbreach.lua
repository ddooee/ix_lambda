
ITEM.name = "보안문 프로토콜 해제 장치"
ITEM.description = "잠겨있거나 열지못하는 문을 브리칭하는데에 사용됩니다."
ITEM.model = Model("models/props_wasteland/prison_padlock001a.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.price = 475

ITEM.functions.Place = {
	OnRun = function(itemTable)
		local client = itemTable.player
		local data = {}
			data.start = client:GetShootPos()
			data.endpos = data.start + client:GetAimVector() * 96
			data.filter = client

		local breach = scripted_ents.Get("ix_doorbreach"):SpawnFunction(client, util.TraceLine(data))

		if (IsValid(breach)) then
			client:EmitSound("physics/metal/weapon_impact_soft2.wav", 75, 80)
		else
			return false
		end
	end
}

if (CLIENT) then
	function ITEM:PopulateTooltip(tooltip)
		local data = tooltip:AddRow("data")
		data:SetBackgroundColor(Color(85, 127, 242))
		data:SetText(L("높은 보안수준 요구됨"))
		data:SetExpensiveShadow(0.5)
		data:SizeToContents()
	end
end
