local config = require("kanagawa-paper.config")

local M = {}

--- load the colorscheme
function M.load(opts)
	if opts then
		config.extend(opts)
	end

	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "kanagawa-paper"
	vim.o.termguicolors = true

	local colors = require("kanagawa-paper.colors").setup({ colors = config.options.colors })
	local groups = require("kanagawa-paper.groups.init").setup(colors, config.options)
	require("kanagawa-paper.groups.init").highlight(groups, config.terminalColors and colors.theme.term or {})
end

M.setup = config.setup

return M
