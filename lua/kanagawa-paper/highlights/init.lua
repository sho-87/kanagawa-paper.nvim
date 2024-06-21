local M = {}

---@param highlights table
---@param termcolors table
function M.highlight(highlights, termcolors)
	for hl, spec in pairs(highlights) do
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

	local highlights = {}
	for _, highlight in ipairs({ "editor", "syntax", "treesitter", "lsp", "plugins", "ft" }) do
		local mod = require("kanagawa-paper.highlights." .. highlight)
		for hl, spec in pairs(mod.setup(colors, opts)) do
			highlights[hl] = spec
		end
	end

	for hl, spec in pairs(opts.overrides(colors)) do
		if highlights[hl] and next(spec) then
			highlights[hl].link = nil
		end
		highlights[hl] = vim.tbl_extend("force", highlights[hl] or {}, spec)
	end

	return highlights
end

return M
