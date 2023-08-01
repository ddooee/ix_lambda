ITEM.name = "암흑 물질 감압기"
ITEM.description = "외계 합금으로 완벽히 밀폐된 용기 내부에서 무언가 요동치고 있습니다...\n관제역으로부터 직접 신호를 주고받게 설정되어 있습니다."
ITEM.model = "models/Items/combine_rifle_ammo01.mdl"


function ITEM:CanTransfer(inventory, newInventory)
	return !self.bBeingUsed
end
