local M = {}

function M.get(colors, opts)
	local theme = colors.theme

	return {
		LazyProgressTodo = { fg = theme.ui.nontext },
	}
end

return M
