local PLUGIN = PLUGIN

PLUGIN.TakeBloodTime = 10

function PLUGIN:TakeBlood(item, him)
	local client = item.player
	local target = client:GetEyeTraceNoCursor().Entity
	local trgisplayer = IsValid(target) and target:IsPlayer()
	local char = trgisplayer and target:GetCharacter() or client:GetCharacter()

	if !him or (him and trgisplayer) then
		local blood = char:GetBlood()

		local ostime = os.time()

		if ostime < char:GetData("TimeWhenBloodWasTaken", ostime) then
			client:Notify("이 대상은 이미 수혈되었습니다!")
			return
		end

		if blood < 3500 then
			return client:Notify("혈액이 부족합니다!")
		end

		local uniqueID = "TakingBlood" .. client:UniqueID()

		client:SetAction("수혈", self.TakeBloodTime, function()
			item:Remove()
			client:GetCharacter():GetInventory():Add("bloodbag")

			local winddrawing = him and target or client
			winddrawing = winddrawing:GetCharacter()
			winddrawing:SetBlood(winddrawing:GetBlood() - 2500)
			char:SetData("TimeWhenBloodWasTaken", ostime + 60 * 1440 * 7)
			client:Notify("성공적으로 수혈하였습니다.")
		end)

		local additionalcheck

		if him then
			additionalcheck = function()
				return !IsValid(target) or (IsValid(target) and target:GetVelocity():Length() != 0)
			end

			target:SetAction("피를 뽑는중입니다...", self.TakeBloodTime, function()
				target:Notify("성공적으로 피를 뽑았습니다.")
			end)
		end

		timer.Create(uniqueID, 0.1, self.TakeBloodTime / 0.1, function()
			if !IsValid(client) or (IsValid(client) and client:GetVelocity():Length() != 0) or
				!client:GetCharacter():GetInventory():GetItems()[item:GetID()] or (additionalcheck and additionalcheck()) then
				timer.Remove(uniqueID)

				client:SetAction()

				if him then
					target:SetAction()
				end
			end
		end)
		return
	end
	client:Notify("목표가 유효하지 않습니다!")
end