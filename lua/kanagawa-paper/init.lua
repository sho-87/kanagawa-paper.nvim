local M = {}

---@alias ColorSpec string RGB Hex string
---@alias ColorTable table<string, ColorSpec>
---@alias KanagawaColorsSpec { palette: ColorTable, theme: ColorTable }
---@alias KanagawaColors { palette: PaletteColors, theme: ThemeColors }

--- default config
---@class KanagawaConfig
M.config = {
	undercurl = true,
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	typeStyle = {},
	transparent = false,
	dimInactive = false,
	terminalColors = true,
	colors = { theme = {}, palette = {} },
	---@type fun(colors: KanagawaColorsSpec): table<string, table>
	overrides = function()
		return {}
	end,
}

--- update global configuration with user settings
---@param config? KanagawaConfig user configuration
function M.setup(config)
	M.config = vim.tbl_deep_extend("force", M.config, config or {})
end

--- load the colorscheme
function M.load()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "kanagawa-paper"
	vim.o.termguicolors = true

	local colors = require("kanagawa-paper.colors").setup({ colors = M.config.colors })
	local highlights = require("kanagawa-paper.highlights").setup(colors, M.config)
	require("kanagawa-paper.highlights").highlight(highlights, M.config.terminalColors and colors.theme.term or {})
end

return M
