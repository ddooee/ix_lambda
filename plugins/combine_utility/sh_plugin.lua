local PLUGIN = PLUGIN

PLUGIN.name = "Combine Utilities"
PLUGIN.author = "fallen"
PLUGIN.description = "콤바인 팩션을 위한 유틸리티들을 추가합니다."
ix.util.Include("cl_hud.lua")


ix.config.Add("UnobstructedBioSig", true, "Should you be able to see biosignals through objects?", nil, {
  category = "Combine HUD"
})
