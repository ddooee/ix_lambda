SKILL.name = "화기 전문가"
SKILL.description = "냉전무기로 성공적으로 공격하고 내기를 할 수 있는 능력을 결정하는 기술."
SKILL.category = 1

ix.action:Register("meleeSuccess", "meleeguns", {
	name = "근접전",
	experience = {
		{level = 0, xp = 16},
		{level = 2, xp = 9},
		{level = 5, xp = 3}
	}
})

ix.action:Register("meleeParry", "meleeguns", {
	name = "방어(패리)",
	noLogging = true,
	experience = {
		{level = 0, xp = 8},
		{level = 5, xp = 4}
	}
})

ix.action:Register("meleeMiss", "meleeguns", {
	name = "근접전(실패)",
	noLogging = true,
	experience = {
		{level = 0, xp = 4},
		{level = 5, xp = 2}
	}
})