local theme = require("kanagawa-paper.colors").setup().theme

local kanagawa_paper = {}

kanagawa_paper.normal = {
	a = { bg = theme.syn.fun, fg = theme.ui.bg_m3 },
	b = { bg = theme.diff.change, fg = theme.syn.fun },
	c = { bg = theme.ui.bg_p1, fg = theme.ui.fg },
}

kanagawa_paper.insert = {
	a = { bg = theme.diag.ok, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.diag.ok },
}

kanagawa_paper.command = {
	a = { bg = theme.syn.operator, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.operator },
}

kanagawa_paper.visual = {
	a = { bg = theme.syn.keyword, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.keyword },
}

kanagawa_paper.replace = {
	a = { bg = theme.syn.constant, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.constant },
}

kanagawa_paper.inactive = {
	a = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
	b = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim, gui = "bold" },
	c = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
}

if vim.g.kanagawa_paper_lualine_bold then
	for _, mode in pairs(kanagawa_paper) do
		mode.a.gui = "bold"
	end
end

return kanagawa_paper
