local M = {}

function M.get(colors, opts)
	local theme = colors.theme

	return {
		OctoDetailsLabel = { fg = theme.syn.statement, bold = true },
		OctoDetailsValue = { link = "@variable.member" },
		OctoDirty = { fg = theme.syn.parameter, bold = true },
		OctoIssueTitle = { fg = theme.syn.fun, bold = true },
		OctoStateChangesRequested = { link = "DiagnosticVirtualTextWarn" },
		OctoStateClosed = { link = "DiagnosticVirtualTextError" },
		OctoStateOpen = { link = "DiagnosticVirtualTextHint" },
		OctoStatePending = { link = "DiagnosticVirtualTextWarn" },
		OctoStatusColumn = { fg = theme.syn.number },
		OctoPullAdditions = { bg = theme.diff.addDark },
		OctoPullDeletions = { bg = theme.diff.deleteDark },
		OctoPullModifications = { bg = theme.diff.changeDark },
	}
end

return M
