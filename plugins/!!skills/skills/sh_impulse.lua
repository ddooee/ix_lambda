SKILL.name = "모멘텀블러"
SKILL.description = "충동적인 무기에서 발사될 가능성을 결정하는 기술."
SKILL.category = 1

ix.action:Register("shootSuccess2", "impulse", {
	name = "사격",
	experience = {
		{level = 0, xp = 15},
		{level = 3, xp = 10},
		{level = 5, xp = 5}
	}
})

ix.action:Register("shootFarSuccess2", "impulse", {
	name = "장거리 사격",
	experience = {
		{level = 0, xp = 30},
		{level = 3, xp = 20},
		{level = 5, xp = 15}
	}
})

ix.action:Register("shootTraining2", "impulse", {
	name = "사격(훈련)",
	noLogging = true,
	experience = {
		{level = 0, xp = 8},
		{level = 4, xp = 4},
		{level = 8, xp = 2}
	}
})

ix.action:Register("shootMiss2", "impulse", {
	name = "사격(실패)",
	noLogging = true,
	experience = {
		{level = 0, xp = 3},
		{level = 5, xp = 1}
	}
})