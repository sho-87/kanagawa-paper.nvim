local colors = require("kanagawa-paper.colors").setup()
local theme = colors.theme

local kanagawa_paper = {}

kanagawa_paper.normal = {
	a = { bg = theme.modes.normal, fg = theme.ui.bg_m3 },
	b = { bg = theme.ui.bg_p2, fg = theme.modes.normal },
	c = { bg = theme.ui.bg_p1, fg = theme.ui.fg_gray },
}

kanagawa_paper.insert = {
	a = { bg = theme.modes.insert, fg = theme.ui.bg },
	b = { bg = theme.ui.bg_p2, fg = theme.modes.insert },
}

kanagawa_paper.command = {
	a = { bg = theme.modes.command, fg = theme.ui.bg },
	b = { bg = theme.ui.bg_p2, fg = theme.modes.command },
}

kanagawa_paper.visual = {
	a = { bg = theme.modes.visual, fg = theme.ui.bg },
	b = { bg = theme.ui.bg_p2, fg = theme.modes.visual },
}

kanagawa_paper.replace = {
	a = { bg = theme.modes.replace, fg = theme.ui.bg },
	b = { bg = theme.ui.bg_p2, fg = theme.modes.replace },
}

kanagawa_paper.inactive = {
	a = { bg = theme.ui.bg_m3, fg = theme.ui.fg_gray },
	b = { bg = theme.ui.bg_m3, fg = theme.ui.fg_gray, gui = "bold" },
	c = { bg = theme.ui.bg_m3, fg = theme.ui.fg_gray },
}

if vim.g.kanagawa_paper_lualine_bold then
	for _, mode in pairs(kanagawa_paper) do
		mode.a.gui = "bold"
	end
end

return kanagawa_paper
