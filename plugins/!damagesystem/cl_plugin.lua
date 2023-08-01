-- 1

local owner, w, h, ceil, ft, clmp
ceil = math.ceil
clmp = math.Clamp
local aprg, aprg2 = 0, 0

local function DrawUnconscious()
	owner = LocalPlayer()
	ft = FrameTime()
	w, h = ScrW(), ScrH()

	if (owner:GetCharacter()) then
		if (!owner:IsUnconscious()) then
			if (aprg != 0) then
				aprg2 = clmp(aprg2 - ft*1.3, 0, 1)
				if (aprg2 == 0) then
					aprg = clmp(aprg - ft*.7, 0, 1)
				end
			end
		else
			if (aprg2 != 1) then
				aprg = clmp(aprg + ft*.5, 0, 1)
				if (aprg == 1) then
					aprg2 = clmp(aprg2 + ft*.4, 0, 1)
				end
			end
		end
	end

	if (IsValid(ix.gui.characterMenu) and ix.gui.characterMenu:IsVisible() or !owner:GetCharacter()) then
		return
	end

	surface.SetDrawColor(0, 0, 0, ceil((aprg^.5) * 255))
	surface.DrawRect(-1, -1, w+2, h+2)

	ix.util.DrawText(
		string.utf8upper("인공 의식 시스템 손상됨."), w/2, h/2, ColorAlpha(Color(255, 0, 0), aprg2 * 255), 1, 1, "unconscious", aprg2 * 255
		string.utf8upper("자가 재부팅 프로토콜 실행중"), w/2, h/2, ColorAlpha(Color(255, 0, 0), aprg2 * 255), 1, 1, "unconscious", aprg2 * 255
	)
end

function PLUGIN:PostDrawHUD()
	DrawUnconscious()
end

surface.CreateFont(
  "unconscious",
  {
    font = "NanumSquare",
    extended = true,
    size = 35,
    weight = 100,
    antialias = true,
    shadow = false,
    outline = true,
  }
)