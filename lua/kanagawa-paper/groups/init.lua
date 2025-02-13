local M = {}

---@param groups table
---@param termcolors table
function M.highlight(groups, termcolors)
	for hl, spec in pairs(groups) do
		vim.api.nvim_set_hl(0, hl, spec)
	end
	for i, tcolor in ipairs(termcolors) do
		vim.g["terminal_color_" .. i - 1] = tcolor
	end
end

---@param colors KanagawaColors
---@param opts? KanagawaConfig
function M.setup(colors, opts)
	opts = opts or require("kanagawa-paper.config").options

	local groups = {}
	for _, group in ipairs({ "editor", "syntax", "treesitter", "lsp", "plugins", "ft" }) do
		local mod = require("kanagawa-paper.groups." .. group)
		for hl, spec in pairs(mod.setup(colors, opts)) do
			groups[hl] = spec
		end
	end

	for hl, spec in pairs(opts.overrides(colors)) do
		if groups[hl] and next(spec) then
			groups[hl].link = nil
		end
		groups[hl] = vim.tbl_extend("force", groups[hl] or {}, spec)
	end

	return groups
end

return M
