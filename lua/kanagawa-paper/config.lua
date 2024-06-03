---@alias ColorSpec string RGB Hex string
---@alias ColorTable table<string, ColorSpec>
---@alias KanagawaColorsSpec { palette: ColorTable, theme: ColorTable }
---@alias KanagawaColors { palette: PaletteColors, theme: ThemeColors }

local M = {}

---@class KanagawaConfig
local defaults = {
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

---@type KanagawaConfig
M.options = {}

---@param options? KanagawaConfig user configuration
function M.setup(options)
	M.options = vim.tbl_deep_extend("force", {}, defaults, options or {})
end

---@param options? KanagawaConfig user configuration
function M.extend(options)
	M.options = vim.tbl_deep_extend("force", {}, M.options or defaults, options or {})
end

M.setup()

return M
