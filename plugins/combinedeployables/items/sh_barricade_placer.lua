-- "gamemodes\\ixhl2rp\\plugins\\combinedeployables\\items\\sh_barricade_placer.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal

ITEM.name = "콤바인 바리케이드"
ITEM.description = "외계의 물질로 제조된 콤바인 바리케이드입니다. 적의 공격으로부터 엄폐하거나 무언가의 이동을 차단하는데 쓰입니다."
ITEM.model = Model("models/props_combine/combine_barricade_short01a.mdl")
ITEM.noBusiness = true
ITEM.width = 2
ITEM.height = 2

ITEM.functions.place = {
    name = "설치하기",
	tip = "바리게이트를 설치합니다.",
	icon = "icon16/brick_add.png",
	OnRun = function(item)
        local client = item.player

        if (!client:Alive()) then return false end
        client:EmitSound("physics/cardboard/cardboard_box_break3.wav")

        client.previousWep = client:GetActiveWeapon():GetClass()
        client:Give("weapon_barricade_placer")
       	client:SelectWeapon("weapon_barricade_placer")

        return true
    end,
    OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}

