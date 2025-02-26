local M = {}

function M.get(colors, opts)
	local theme = colors.theme

	return {
		NoiceCmdline = { fg = theme.ui.bg_search },
		NoiceVirtualText = { fg = theme.ui.bg_search },
		NoicePopupBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.float.bg_border },
		NoiceLspProgressTitle = { fg = theme.ui.fg_gray },
	}
end

return M
