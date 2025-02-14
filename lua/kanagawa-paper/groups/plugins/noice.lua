local M = {}

function M.get(colors, opts)
	local theme = colors.theme

	return {
		NoiceCmdline = { fg = theme.ui.bg_search },
		NoiceVirtualText = { fg = theme.ui.bg_search },
		NoicePopupBorder = { fg = theme.ui.bg_p2, bg = theme.ui.bg_p1 },
		NoiceLspProgressTitle = { fg = theme.ui.fg_gray },
	}
end

return M
