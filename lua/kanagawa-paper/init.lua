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
	colors = { theme = { wave = {}, lotus = {}, dragon = {}, all = {} }, palette = {} },
	---@type fun(colors: KanagawaColorsSpec): table<string, table>
	overrides = function()
		return {}
	end,
	theme = "wave",
	compile = false,
}

local function check_config(config)
	local err
	return not err
end

--- update global configuration with user settings
---@param config? KanagawaConfig user configuration
function M.setup(config)
	if check_config(config) then
		M.config = vim.tbl_deep_extend("force", M.config, config or {})
	else
		vim.notify("Kanagawa: Errors found while loading user config. Using default config.", vim.log.levels.ERROR)
	end
end

--- load the colorscheme
---@param theme? string
function M.load(theme)
	theme = theme or M.config.theme
	M._CURRENT_THEME = theme

	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "kanagawa-paper"
	vim.o.termguicolors = true

	local colors = require("kanagawa-paper.colors").setup({ theme = theme, colors = M.config.colors })
	local highlights = require("kanagawa-paper.highlights").setup(colors, M.config)
	require("kanagawa-paper.highlights").highlight(highlights, M.config.terminalColors and colors.theme.term or {})
end

return M
