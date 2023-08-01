local PLUGIN = PLUGIN

function PLUGIN:ShouldHideBars()
	if ix.infoMenu.open then
		return true
	end
end

function PLUGIN:ShowHelp() 
	return false 
end

function PLUGIN:PlayerBindPress(client, bind, pressed)
	if bind:lower():find("gm_showhelp") and pressed then

		if LocalPlayer():GetCharacter() then
            ix.infoMenu.Display()
		end

		return true
	end
end

function PLUGIN:SetInfoMenuData(character, faction)
	ix.infoMenu.Add("레밸: " .. character:GetLevel())

	local card = character:GetIDCard()

	if card then
		ix.infoMenu.Add("CID: #" .. card:GetData("cid", 0))
	end

	ix.infoMenu.Add("스크랩: " .. ix.currency.Get(character:GetMoney()))

/*
	if(character:GetWage()) then
		ix.infoMenu.Add(string.format("임금: %s 스크랩", character:GetWage()))
	end

	

	if(faction.name == "Civil Protection") then
		local cpData = character:GetCPInfo()

		ix.infoMenu.Add("태그라인: " .. character:GetCPTagline())
		ix.infoMenu.Add("계급: " .. character:GetRank().displayName)

		if(cpData.spec) then
			ix.infoMenu.Add("Specialization: " .. character:GetSpec().name)
		end
	end
	*/
end