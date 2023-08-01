ix.currencies.config = {
	currencies = {
		-- !! DEFAULT MUST BE INCLUDED !! --
		default = {
			-- NOTE: Switching this from true to false will cause any currency in character inventories to vanish.
			-- If this is switched from false to true the system will automatclly deplete their "digital" currency first before taking the physical.
			physical = true,
			-- The weight (for a single unit of currency), this only works with my Weight plugin. This is in kilograms.
			weight = 0.001,
			-- The default model for the default currency, also seconds as the fallback model for other currencies.
			model = "models/uupack/2tokens.mdl",
			-- The name of the currency.
			name = "스크랩",
			-- The description of the currency.
			description = "외계 합금으로 구성된 철판입니다. 이 스크랩을 모아 브로커에게 가져간다면 무언가 얻을 수 있을지도 모릅니다.",
			-- The symbol of the currency.
			symbol = "개",
			-- The currency in singular.
			singular = "스크랩",
			-- The currency in plural.
			plural = "스크랩",
			-- The sound that plays when this currency is picked up or gained.
			pickup = nil,
			-- The sound that plays with this currency is dropped or lost.
			drop = nil,
		},

		--[[drachma = {
			physical = true,
			weight = 0.005,
			model = "models/props_lab/box01a.mdl",
			name = "Drachma",
			description = "A currency and coin as old and as ancient as ancient history and recorded memory.",
			symbol = "D",
			singular = "drachma",
			plural = "drachma",
			pickup = nil,
			drop = nil,
		},]]--
	}
}

ix.lang.AddTable("english", {
	dropCurrency = "Drop Currency",
	mergeCurrency = "Merge Currency",
	splitCurrency = "Split Currency",

	giveMoney = "You have given %s money.",

	cmdCharGiveMoney = "Give money of a specified amount to the specified character.",
})
ix.lang.AddTable("korean", {
	dropCurrency = "화폐 떨어트리기",
	mergeCurrency = "화폐 합치기",
	splitCurrency = "화폐 나누기",

	giveMoney = "당신은 %s만큼의 돈을 주었습니다.",

	cmdCharGiveMoney = "해당 캐릭터에게 특정한 양 만큼의 돈을 줍니다.",
})
