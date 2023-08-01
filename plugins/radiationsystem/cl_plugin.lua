
/*ix.bar.Add(function()
	local character = LocalPlayer():GetCharacter()

	if (character) then
		local radLevel = LocalPlayer():GetNetVar("radDmg") or 0
		local geiger = character:HasGeigerCounter()

		if geiger and radLevel > 0 then
			return 1, Format("%s 시버트", radLevel)
		end
	end

	return false
end, Color(50, 200, 50), nil, "geiger")

ix.bar.Add(function()
	local character = LocalPlayer():GetCharacter()

	if (character) then
		local filter = character:HasWearedFilter()
		if filter then
			return filter:GetFilterQuality() / filter.filterQuality, "필터 상태"
		end
	end

	return false
end, Color(200, 200, 200), nil, "filter")*/