local M = {}

function M.get(colors, opts)
	local theme = colors.theme

	return {
		YankyYanked = { bg = theme.modes.visual, fg = theme.ui.fg_dark },
		YankyPut = { bg = theme.modes.insert, fg = theme.ui.fg_dark },
	}
end

return M
