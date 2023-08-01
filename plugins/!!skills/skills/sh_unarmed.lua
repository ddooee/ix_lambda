SKILL.name = "비무장"
SKILL.description = "손싸움에서 성공적인 공격과 내기를 할 수 있는 능력을 결정하는 기술"
SKILL.category = 1

ix.action:Register("unarmedSuccess", "unarmed", {
	name = "성공",
	experience = {
		{level = 0, xp = 16},
		{level = 2, xp = 9},
		{level = 5, xp = 2}
	}
})

ix.action:Register("unarmedParry", "unarmed", {
	name = "방어(패리)",
	noLogging = true,
	experience = {
		{level = 0, xp = 6},
		{level = 5, xp = 2}
	}
})

ix.action:Register("unarmedFail", "unarmed", {
	name = "존나쳐맞기",
	noLogging = true,
	experience = {
		{level = 0, xp = 2},
		{level = 5, xp = 1}
	}
})
