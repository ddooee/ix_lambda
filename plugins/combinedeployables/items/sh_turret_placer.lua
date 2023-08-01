-- "gamemodes\\ixhl2rp\\plugins\\combinedeployables\\items\\sh_turret_placer.lua"
-- Retrieved by https://github.com/lewisclark/glua-steal
ITEM.name = "콤바인 터렛"
ITEM.description = "레이저로 적의 생체 신호를 감지해 내부에 장전되어있는 펄스 탄환을 사용해 대상을 사살합니다."
ITEM.model = Model("models/combine_turrets/floor_turret.mdl")
ITEM.noBusiness = true
ITEM.width = 2
ITEM.height = 3

ITEM.functions.place = {
    name = "설치하기",
	tip = "터렛을 설치합니다.",
	icon = "icon16/brick_add.png",
	OnRun = function(item)
        local client = item.player

        if (!client:Alive()) then return false end
        client:EmitSound("physics/cardboard/cardboard_box_break3.wav")

        client.previousWep = client:GetActiveWeapon():GetClass()
        client:Give("weapon_turret_placer")
       	client:SelectWeapon("weapon_turret_placer")

        return true
    end,
    OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}