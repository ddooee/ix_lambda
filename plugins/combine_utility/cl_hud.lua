local PLUGIN = PLUGIN
local shit = LocalPlayer()

function PLUGIN:HUDPaint()
  if LocalPlayer():IsCombine() or LocalPlayer():Team() == FACTION_OTA then

    local area = LocalPlayer():GetArea() or "기록되지 않은 장소" -- What was the purpose of this?
	local tsin = TimedSin(.75, 120, 255, 0)

    local AllUnits = {}

    for client, char in ix.util.GetCharacters() do
      if char:IsCombine() then
        AllUnits[#AllUnits + 1] = char:GetName()
      end
    end
	
	if LocalPlayer():Health() >= 75 then -- there's probably a more efficient way to do whatever is below but eh
		hpCol = Color(102, 153, 255)
	elseif LocalPlayer():Health() >= 40 then
		hpCol = Color(255,239,17)
	else
		if LocalPlayer():Health() < 20 then
			hpCol = Color(tsin, 0, 0)
			Schema:AddCombineDisplayMessage("경고: ERR#!#@$")
			draw.DrawText("바이저 모듈 손상 감지됨\n즉각 조치 필요", "visor_warn", ScrW() / 2, ScrH() / 5, Color(tsin, 0, 0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
		end
	end	
	
	if LocalPlayer():Armor() >= 70 then
		armCol = Color(102, 153, 255)
	elseif LocalPlayer():Armor() >= 35 then
		armCol = Color(255,239,17)
	else
		if LocalPlayer():Armor() < 20 then
			armCol = Color(tsin,0,0)	
		end
	end	
	if (LocalPlayer():GetNetVar("IsBiosignalGone")) then
		draw.DrawText("BIOSIGNAL NOT FOUND", "CHudLabel", ScrW() / 1150, ScrH() / 8, Color(tsin, 0, 0), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
	end	

    local UnitManifest = table.concat(AllUnits, "\n")
    draw.DrawText("<:: 집계된 병력 목록 ::>\n" .."<::".. UnitManifest .. "::>", "BudgetLabel", ScrW() - 325, ScrH() / 8, Color(255, 255, 255), TEXT_ALIGN_CENTER)
	draw.DrawText("<:: " .. area .. " ::>", "BudgetLabel", ScrW() - 430, ScrH() / 18, Color(0, 153, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
	draw.DrawText("VTL: " .. LocalPlayer():Health() .."%", "CHudLabel", ScrW() - 1150, ScrH() / 25, hpCol, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
	draw.DrawText("BPACK: " ..LocalPlayer():Armor().."%", "CHudLabel", ScrW() - 950, ScrH() / 25, armCol, TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
   end
end


surface.CreateFont("BigLabel", {
  font = "BudgetLabel",
  size = 35,
  outline = true,
  weight = 100,
  extended = true,
  shadow = true
})
surface.CreateFont("HUDSmooth", {
    font = "NanumBarunGothic",
    size = 40,
    antialias = true,
	outline = true,
    weight = 350,
})
surface.CreateFont(
  "CHudLabel",
  {
    font = "BudgetLabel",
    extended = true,
    size = 35,
    weight = 100,
    antialias = true,
    shadow = false,
    outline = false,
    scanlines = 3
  }
)

surface.CreateFont(
  "visor_warn",
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

surface.CreateFont(
  "C_display",
  {
    font = "NanumSquare",
    extended = true,
    size = 20,
    weight = 100,
    antialias = true,
    shadow = false,
    outline = true,
  }
)

surface.CreateFont(
  "waypoint",
  {
    font = "NanumSquare",
    size = 20,
    weight = 100,
    antialias = false,
	outline = false,
  }
)

surface.CreateFont("stalkermainmenufont", {
	font = "NanumSquare",
	size = ScreenScale(8),
	extended = true,
	weight = 500,
	antialias = true
})

surface.CreateFont("stalkerregulartipfont", {
	font = "NanumSquare",
	size = ScreenScale(5),
	extended = true,
	weight = 500,
	antialias = true
})

surface.CreateFont("stalkerregularsmallfont", {
	font = "NanumSquare",
	size = ScreenScale(6),
	extended = true,
	weight = 500,
	antialias = true
})

surface.CreateFont("stalkerregularsmallfont2", {
	font = "NanumSquare",
	size = ScreenScale(7),
	extended = true,
	weight = 500,
	antialias = true
})

surface.CreateFont("stalkerregularinvfont", {
	font = "NanumSquare",
	size = 16,
	extended = true,
	weight = 1,
	antialias = true
})

surface.CreateFont("stalkerregularfontcategory", {
	font = "NanumSquare",
	size = ScreenScale(7),
	extended = true,
	weight = 500,
	antialias = true
})

surface.CreateFont("stalkerregularfont", {
	font = "NanumSquare",
	size = ScreenScale(8),
	extended = true,
	weight = 500,
	antialias = true
})

surface.CreateFont("stalkerregularfont2", {
	font = "NanumSquare",
	size = 24,
	extended = true,
	weight = 500,
	antialias = true
})

surface.CreateFont("stalkerregularfont3", {
	font = "NanumSquare",
	size = 18,
	extended = true,
	weight = 500,
	antialias = true
})

surface.CreateFont("stalkerregularchatfont", {
	font = "NanumSquare",
	size = ScreenScale(9),
	extended = true,
	weight = 500,
	antialias = true
})

surface.CreateFont("stalkerregulartitlefont", {
	font = "NanumSquare",
	size = ScreenScale(9),
	extended = true,
	weight = 500,
	antialias = true
})

surface.CreateFont("stensilfont", {
	font = "NanumSquare",
	size = ScreenScale(9),
	extended = true,
	weight = 500,
	antialias = true
})

surface.CreateFont("stalkerregularbigfont", {
	font = "NanumSquare",
	size = ScreenScale(18),
	extended = true,
	weight = 500,
	antialias = true
})

surface.CreateFont("stalkertitlefont", {
	font = "NanumSquare",
	size = ScreenScale(13),
	extended = true,
	weight = 500,
	antialias = true
})

surface.CreateFont("stalkermaintitlefont", {
	font = "NanumSquare",
	size = ScreenScale(26),
	extended = true,
	weight = 500,
	antialias = true
})

surface.CreateFont("stalkermainsubtitlefont", {
	font = "NanumSquare",
	size = ScreenScale(20),
	extended = true,
	weight = 500,
	antialias = true
})


