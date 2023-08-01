ITEM.name = "암흑 물질 구동기 Mk.1"
ITEM.description = "최대 10번의 보르티곤트 공격을 반사할 수 있는 반경 1미터의 펄스 파워 필드를 생성하는 휴대용 장치의 실험 프로토타입입니다. 이 장치는 방사선과 같은 매우 부정적인 영향을 미치는 암흑 에너지 마이크로 배터리로 구동됩니다."
ITEM.model = Model("models/items/battery.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.rarity = 2
ITEM.category = "희귀"
ITEM.outfitCategory = "shield"

local desc = "최대 10번의 보르티곤트 공격을 반사할 수 있는 반경 1미터의 펄스 파워 필드를 생성하는 휴대용 장치의 실험 프로토타입입니다. 이 장치는 방사선과 같은 매우 부정적인 영향을 미치는 암흑 에너지 마이크로 배터리로 구동됩니다.\n\n실드 상태: %s/10"
function ITEM:GetDescription()
	return string.format(desc, self:GetQuality())
end

function ITEM:OnInstanced(invID, x, y, item)
	item:SetData("s", 10)
end

function ITEM:SetQuality(amount)
	self:SetData("s", amount)
end

function ITEM:GetQuality()
	return self:GetData("s", 10)
end

function ITEM:CanEquipOutfit()
	local client = self.player

	if !IsValid(client) then
		return false
	end

	return client:GetCharacter():GetData("armored") == true
end

function ITEM:OnEquipped()
	local client = self.player

	if !IsValid(client) then
		return
	end

	client.shieldx = self
	client:SetNWBool("shieldx", true)
end

function ITEM:OnUnequipped()
	local client = self.player

	if !IsValid(client) then
		return
	end

	client.shieldx = nil
	client:SetNWBool("shieldx", false)
end

hook.Add("CharacterLoaded", "shieldX", function(character)
	local client = character:GetPlayer()

	client.shieldx = nil
	client:SetNWBool("shieldx", nil)

	local item = character:GetInventory():HasItem("shieldx", {equip = true})

	if item then
		client.shieldx = item
		client:SetNWBool("shieldx", true)
	end
end)