ITEM.name = "휴대용 무전기"
ITEM.category = "무전기"
ITEM.description = "자유롭게 주파수를 설정할 수 있는 무전기입니다."
ITEM.business = true
ITEM.price = 50
ITEM.stationaryCanAccess = true

function ITEM:GetFrequency()
	return self:GetData("frequency", "100.0")
end

function ITEM:GetFrequencyID()
	return string.format("freq_%d", string.gsub(self:GetData("frequency", "100.0"), "%p", ""))
end

ITEM.functions.Frequency = {
	name = "주파수 설정",

	OnCanRun = function(item)
		return IsValid(item.player) and !IsValid(item.entity) and !item.player:IsRestricted()
	end,

	OnClick = function(item)
		Derma_StringRequest("주파수", "무전 주파수 입력", item:GetData("frequency", "100.0"), function(text)
			netstream.Start("ixRadioFrequency", item:GetID(), text)
		end)
	end,

	OnRun = function()
		return false
	end
}
