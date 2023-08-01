SKILL.name = "사격"
SKILL.description = "사격할 때 맞힐 기회를 결정하는 기술"
SKILL.category = 1

ix.action:Register("shootSuccess", "guns", {
	name = "사격",
	experience = {
		{level = 0, xp = 15},
		{level = 3, xp = 10},
		{level = 5, xp = 5}
	}
})

ix.action:Register("shootFarSuccess", "guns", {
	name = "저격",
	experience = {
		{level = 0, xp = 30},
		{level = 3, xp = 20},
		{level = 5, xp = 15}
	}
})

ix.action:Register("shootTraining", "guns", {
	name = "사격(훈련)",
	noLogging = true,
	experience = {
		{level = 0, xp = 8},
		{level = 4, xp = 4},
		{level = 8, xp = 2}
	}
})

ix.action:Register("shootMiss", "guns", {
	name = "사격(실패)",
	noLogging = true,
	experience = {
		{level = 0, xp = 3},
		{level = 5, xp = 1}
	}
})