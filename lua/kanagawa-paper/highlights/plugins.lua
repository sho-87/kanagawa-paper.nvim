local M = {}

---@param colors KanagawaColors
---@param opts? KanagawaConfig
function M.setup(colors, opts)
	opts = opts or require("kanagawa-paper.config").options
	local theme = colors.theme
	local palette = colors.palette

	return {
		-- Gitsigns
		GitSignsAdd = { fg = theme.vcs.added, bg = theme.ui.bg_gutter },
		GitSignsChange = { fg = theme.vcs.changed, bg = theme.ui.bg_gutter },
		GitSignsDelete = { fg = theme.vcs.removed, bg = theme.ui.bg_gutter },

		-- Neogit
		NeogitDiffContextHighlight = { bg = theme.diff.change }, --[[  guibg=#333333 guifg=#b2b2b2 ]]
		NeogitHunkHeader = { fg = theme.syn.fun }, --[[  guifg=#cccccc guibg=#404040 ]]
		NeogitHunkHeaderHighlight = { fg = theme.syn.constant, bg = theme.diff.change }, --[[ guifg=#cccccc guibg=#4d4d4d ]]
		NeogitDiffAddHighlight = { bg = theme.diff.add },
		NeogitDiffDeleteHighlight = { bg = theme.diff.delete },

		-- TreeSitter Extensions
		TreesitterContext = { link = "Folded" },
		TreesitterContextLineNumber = { fg = theme.ui.special, bg = theme.ui.bg_gutter },

		-- Telescope
		TelescopeTitle = { fg = palette.sumiInk0, bg = palette.dragonBlue, bold = true },
		TelescopeBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.bg },
		TelescopeSelection = { link = "CursorLine" },
		TelescopeSelectionCaret = { link = "CursorLineNr" },
		TelescopePromptNormal = { bg = theme.ui.bg_p2 },
		TelescopePromptBorder = { fg = theme.ui.bg_p2, bg = theme.ui.bg_p2 },
		TelescopeResultsClass = { link = "Structure" },
		TelescopeResultsStruct = { link = "Structure" },
		TelescopeResultsField = { link = "@field" },
		TelescopeResultsMethod = { link = "Function" },
		TelescopeResultsVariable = { link = "@variable" },
		TeleScopeResultsTitle = { fg = palette.sumiInk0, bg = palette.dragonOrange, bold = true },
		TelescopeResultsNormal = { fg = theme.ui.fg, bg = theme.ui.bg_p1 },
		TelescopeResultsBorder = { fg = theme.ui.bg_p2, bg = theme.ui.bg_p1 },
		TeleScopePreviewTitle = { fg = palette.sumiInk0, bg = palette.waveAqua1, bold = true },
		TelescopePreviewNormal = { bg = theme.ui.bg },
		TelescopePreviewBorder = { bg = theme.ui.bg, fg = theme.ui.bg_p2 },

		-- NvimTree
		-- NvimTreeIndentMarker           = {},
		NvimTreeNormal = { link = "Normal" },
		NvimTreeNormalNC = { link = "NvimTreeNormal" },
		NvimTreeGitDirty = { fg = theme.vcs.changed },
		NvimTreeGitNew = { fg = theme.vcs.added },
		NvimTreeGitDeleted = { fg = theme.vcs.removed },
		NvimTreeGitStaged = { fg = theme.vcs.added },
		NvimTreeSpecialFile = { fg = theme.syn.special1 },
		NvimTreeImageFile = { fg = theme.syn.special2 },
		NvimTreeSymlink = { link = "Type" },
		NvimTreeFolderName = { link = "Directory" },
		NvimTreeExecFile = { fg = theme.syn.string, bold = true },
		NvimTreeRootFolder = { fg = palette.autumnRed, bold = true },
		NvimTreeOpenedFile = { fg = theme.syn.special1, italic = true },
		NvimTreeOpenedFolderName = { fg = palette.dragonBlue },
		NvimTreeWinSeparator = { link = "WinSeparator" },
		NvimTreeWindowPicker = { bg = theme.ui.bg_m1, fg = theme.syn.special1, bold = true },

		-- NeoTree
		NeoTreeNormal = { link = "NormalFloat" },
		NeoTreeNormalNC = { link = "NormalFloat" },
		NeoTreeFloatTitle = { fg = theme.ui.bg_m3, bg = palette.dragonGray3, bold = true },
		NeoTreeFloatBorder = { fg = theme.ui.bg_p2, bg = theme.ui.float.bg_border },
		NeoTreeWinSeparator = { link = "WinSeparator" },
		NeoTreeTabInactive = { link = "TabLine" },
		NeoTreeTabActive = { link = "TabLineSel" },
		NeoTreeTabSeparatorInactive = { link = "NeoTreeTabInactive" },
		NeoTreeTabSeparatorActive = { link = "NeoTreeTabActive" },
		NeoTreeRootName = { fg = palette.dragonRed, bold = true },
		NeoTreeModified = { link = "String" },
		NeoTreeGitModified = { fg = theme.vcs.changed },
		NeoTreeGitAdded = { fg = theme.vcs.added },
		NeoTreeGitDeleted = { fg = theme.vcs.removed },
		NeoTreeGitStaged = { fg = theme.vcs.added },
		NeoTreeGitConflict = { fg = theme.diag.error },
		NeoTreeGitUntracked = { link = "NeoTreeGitModified", default = true },
		NeoTreeGitUnstaged = { link = "NeoTreeGitModified", default = true },
		NeoTreeIndentMarker = { fg = theme.ui.indent },
		NeoTreeFileNameOpened = { fg = theme.syn.special1, italic = true },
		NeoTreeSymbolicLinkTarget = { link = "Type" },

		-- WindowPicker
		NvimWindowSwitch = { bg = theme.ui.bg_m3, fg = theme.diag.warning },
		NvimWindowSwitchNC = { link = "NvimWindowSwitch" },

		-- Dashboard
		DashboardShortCut = { fg = theme.syn.special1 },
		DashboardHeader = { fg = theme.vcs.removed },
		DashboardCenter = { fg = theme.syn.identifier },
		DashboardFooter = { fg = theme.syn.comment },
		DashboardDesc = { fg = theme.syn.identifier },
		DashboardKey = { fg = theme.syn.special1 },
		DashboardIcon = { fg = theme.ui.special },

		-- Notify
		NotifyBackground = { bg = theme.ui.bg },
		NotifyERRORBorder = { link = "DiagnosticError" },
		NotifyWARNBorder = { link = "DiagnosticWarn" },
		NotifyINFOBorder = { link = "DiagnosticInfo" },
		NotifyHINTBorder = { link = "DiagnosticHint" },
		NotifyDEBUGBorder = { link = "Debug" },
		NotifyTRACEBorder = { link = "Comment" },
		NotifyERRORIcon = { link = "DiagnosticError" },
		NotifyWARNIcon = { link = "DiagnosticWarn" },
		NotifyINFOIcon = { link = "DiagnosticInfo" },
		NotifyHINTIcon = { link = "DiagnosticHint" },
		NotifyDEBUGIcon = { link = "Debug" },
		NotifyTRACEIcon = { link = "Comment" },
		NotifyERRORTitle = { link = "DiagnosticError" },
		NotifyWARNTitle = { link = "DiagnosticWarn" },
		NotifyINFOTitle = { link = "DiagnosticInfo" },
		NotifyHINTTitle = { link = "DiagnosticHint" },
		NotifyDEBUGTitle = { link = "Debug" },
		NotifyTRACETitle = { link = "Comment" },

		-- Incline
		InclineNormal = { bg = palette.fujiWhite, fg = theme.ui.bg_dim },
		InclineNormalNC = { bg = theme.ui.bg_p2, fg = palette.fujiWhite },

		-- Dap-UI
		-- DapUIVariable = { link = "Normal" },
		DapUIScope = { link = "Special" }, -- guifg=#00F1F5"
		DapUIType = { link = "Type" }, -- guifg=#D484FF"
		-- DapUIValue = { link = "Normal" },
		DapUIModifiedValue = { fg = theme.syn.special1, bold = true }, -- guifg=#00F1F5 gui=bold"
		DapUIDecoration = { fg = theme.ui.float.fg_border }, -- guifg=#00F1F5"
		DapUIThread = { fg = theme.syn.identifier }, --guifg=#A9FF68"
		DapUIStoppedThread = { fg = theme.syn.special1 }, --guifg=#00f1f5"
		-- DapUIFrameName = { link = "Normal"},
		DapUISource = { fg = theme.syn.special2 }, -- guifg=#D484FF"
		DapUILineNumber = { fg = theme.syn.special1 }, -- guifg=#00f1f5"
		DapUIFloatBorder = { fg = theme.ui.float.fg_border }, -- guifg=#00F1F5"
		DapUIWatchesEmpty = { fg = theme.diag.error }, -- guifg=#F70067"
		DapUIWatchesValue = { fg = theme.syn.identifier }, -- guifg=#A9FF68"
		DapUIWatchesError = { fg = theme.diag.error }, --guifg=#F70067"
		DapUIBreakpointsPath = { link = "Directory" }, --guifg=#00F1F5"
		DapUIBreakpointsInfo = { fg = theme.diag.info }, --guifg=#A9FF68"
		DapUIBreakpointsCurrentLine = { fg = theme.syn.identifier, bold = true }, --guifg=#A9FF68 gui=bold"
		-- DapUIBreakpointsLine = {}, -- DapUILineNumber"
		DapUIBreakpointsDisabledLine = { link = "Comment" }, --guifg=#424242"
		-- DapUICurrentFrameName = {}, -- DapUIBreakpointsCurrentLine"
		DapUIStepOver = { fg = theme.syn.special1 }, --guifg=#00f1f5"
		DapUIStepInto = { fg = theme.syn.special1 }, --guifg=#00f1f5"
		DapUIStepBack = { fg = theme.syn.special1 }, --guifg=#00f1f5"
		DapUIStepOut = { fg = theme.syn.special1 }, --guifg=#00f1f5"
		DapUIStop = { fg = theme.diag.error }, --guifg=#F70067"
		DapUIPlayPause = { fg = theme.syn.string }, --guifg=#A9FF68"
		DapUIRestart = { fg = theme.syn.string }, --guifg=#A9FF68"
		DapUIUnavailable = { fg = theme.syn.comment }, --guifg=#424242"

		-- Floaterm
		FloatermBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.bg },

		-- NeoVim
		healthError = { fg = theme.diag.error },
		healthSuccess = { fg = theme.diag.ok },
		healthWarning = { fg = theme.diag.warning },

		-- Cmp
		CmpDocumentation = { link = "NormalFloat" },
		CmpDocumentationBorder = { link = "FloatBorder" },
		CmpCompletion = { link = "Pmenu" },
		CmpCompletionSel = { fg = "NONE", bg = theme.ui.pmenu.bg_sel },
		CmpCompletionBorder = { fg = theme.ui.bg_search, bg = theme.ui.pmenu.bg },
		CmpCompletionThumb = { link = "PmenuThumb" },
		CmpCompletionSbar = { link = "PmenuSbar" },
		CmpItemAbbr = { fg = theme.ui.pmenu.fg },
		CmpItemAbbrDeprecated = { fg = theme.syn.comment, strikethrough = true },
		CmpItemAbbrMatch = { fg = theme.syn.fun },
		CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
		CmpItemKindDefault = { fg = theme.ui.fg_dim },
		CmpItemMenu = { fg = theme.ui.fg_dim },
		CmpItemKindText = { fg = theme.ui.fg },
		CmpItemKindMethod = { link = "@function.method" },
		CmpItemKindFunction = { link = "Function" },
		CmpItemKindConstructor = { link = "@constructor" },
		CmpItemKindField = { link = "@variable.member" },
		CmpItemKindVariable = { link = "@variable" },
		CmpItemKindClass = { link = "Type" },
		CmpItemKindInterface = { link = "Type" },
		CmpItemKindModule = { link = "@module" },
		CmpItemKindProperty = { link = "@property" },
		CmpItemKindUnit = { link = "Number" },
		CmpItemKindValue = { link = "String" },
		CmpItemKindEnum = { link = "Type" },
		CmpItemKindKeyword = { link = "Keyword" },
		CmpItemKindSnippet = { link = "Special" },
		CmpItemKindColor = { link = "Special" },
		CmpItemKindFile = { link = "Directory" },
		CmpItemKindReference = { link = "Special" },
		CmpItemKindFolder = { link = "Directory" },
		CmpItemKindEnumMember = { link = "Constant" },
		CmpItemKindConstant = { link = "Constant" },
		CmpItemKindStruct = { link = "Type" },
		CmpItemKindEvent = { link = "Type" },
		CmpItemKindOperator = { link = "Operator" },
		CmpItemKindTypeParameter = { link = "Type" },
		CmpItemKindCopilot = { link = "String" },

		-- IndentBlankline
		IndentBlanklineChar = { fg = theme.ui.indent },
		IndentBlanklineSpaceChar = { fg = theme.ui.indent },
		IndentBlanklineSpaceCharBlankline = { fg = theme.ui.indent },
		IndentBlanklineContextChar = { fg = theme.ui.special },
		IndentBlanklineContextStart = { sp = theme.ui.special, underline = true },
		IblIndent = { fg = theme.ui.indent },
		IblWhitespace = { fg = theme.ui.indent },
		IblScope = { fg = theme.ui.special },

		-- Lazy
		LazyProgressTodo = { fg = theme.ui.nontext },

		-- Trouble
		TroubleIndent = { fg = theme.ui.whitespace },
		TroublePos = { fg = theme.ui.special },

		-- Headlines
		Headline1 = { bg = palette.waveBlue1, fg = theme.ui.fg, bold = true },
		Headline2 = { bg = palette.winterRed, fg = theme.ui.fg, bold = true },
		Headline3 = { bg = palette.winterYellow, fg = theme.ui.fg, bold = true },
		Headline4 = { bg = palette.winterGreen, fg = theme.ui.fg, bold = true },
		Headline5 = { bg = palette.dragonRed, fg = theme.ui.fg, bold = true },
		Headline6 = { bg = palette.dragonGray, fg = theme.ui.fg, bold = true },

		-- Raindow delimiters
		RainbowDelimiterRed = { fg = palette.dragonRed },
		RainbowDelimiterYellow = { fg = palette.dragonYellow },
		RainbowDelimiterBlue = { fg = palette.dragonBlue },
		RainbowDelimiterOrange = { fg = palette.dragonOrange2 },
		RainbowDelimiterGreen = { fg = palette.dragonGreen },
		RainbowDelimiterViolet = { fg = palette.dragonAsh },
		RainbowDelimiterCyan = { fg = palette.dragonTeal },

		-- Bufferline
		BufferlineFill = { bg = theme.ui.bg_tabline },
		BufferlineNumbers = {
			bg = not opts.transparent and theme.ui.bg_tabline or "NONE",
			fg = theme.ui.fg_dim,
			bold = true,
		},
		BufferlineNumbersSelected = { fg = palette.dragonBlue, bold = true },
		BufferlineBuffer = { bg = theme.ui.bg_tabline, fg = theme.ui.fg_dim, bold = false },
		BufferlineBufferSelected = { bg = theme.ui.bg, fg = palette.dragonWhite, bold = true },
		BufferlineIndicatorSelected = { fg = palette.dragonBlue },
		BufferlineModified = {
			bg = not opts.transparent and theme.ui.bg_tabline or "NONE",
			fg = theme.vcs.changed,
		},
		BufferlineModifiedSelected = { bg = theme.ui.bg, fg = theme.vcs.changed },
		BufferlineCloseButton = {
			bg = not opts.transparent and theme.ui.bg_tabline or "NONE",
			fg = theme.ui.fg_dim,
			bold = false,
		},
		BufferlineCloseButtonSelected = { fg = palette.dragonRed, bold = true },
		BufferlineTab = { bg = theme.ui.bg_tabline, fg = theme.ui.fg_dim },
		BufferlineTabClose = { bg = theme.ui.bg_p1, fg = palette.dragonRed },
		BufferlineTabSelected = { bg = theme.ui.bg_p1, fg = palette.dragonWhite, bold = true },
		BufferlineTabSeparator = { bg = theme.ui.bg_tabline, fg = theme.ui.bg_tabline },
		BufferlineTabSeparatorSelected = { bg = theme.ui.bg_tabline, fg = theme.ui.bg_tabline },
		BufferlineSeparator = { fg = theme.ui.bg_tabline, bg = theme.ui.bg_tabline },
		BufferlineSeparatorSelected = { fg = theme.ui.bg_tabline, bg = theme.ui.bg_tabline },

		-- barbar
		BufferInactive = { link = "BufferlineBuffer" },
		BufferInactiveSign = { link = "BufferLineSeparator" },
		BufferInactiveBtn = { bg = theme.ui.bg_tabline, fg = theme.ui.fg_dim },
		BufferInactiveMod = { link = "BufferInactive" },
		BufferInactiveModBtn = { bg = theme.ui.bg_tabline, fg = theme.vcs.changed },
		BufferInactiveTarget = { bg = theme.ui.bg_tabline, fg = palette.dragonRed, bold = true },
		BufferInactiveIndex = { bg = theme.ui.bg_tabline, fg = theme.ui.fg_dim, bold = true },
		BufferInactiveNumber = { bg = theme.ui.bg_tabline, fg = theme.ui.fg_dim, bold = true },
		BufferCurrent = { link = "BufferlineBufferSelected" },
		BufferCurrentBtn = { link = "BufferLineCloseButtonSelected" },
		BufferCurrentSign = { bg = palette.dragonBlue, fg = palette.dragonBlue },
		BufferCurrentMod = { link = "BufferCurrent" },
		BufferCurrentModBtn = { link = "BufferlineModifiedSelected" },
		BufferCurrentTarget = { bg = theme.ui.bg, fg = palette.dragonRed, bold = true },
		BufferCurrentIndex = { bg = theme.ui.bg, fg = palette.dragonWhite, bold = true },
		BufferCurrentNumber = { bg = theme.ui.bg, fg = palette.dragonWhite, bold = true },
		BufferAlternate = { bg = theme.ui.bg_tabline, fg = palette.dragonPink },
		BufferAlternateSign = { link = "BufferAlternate" },
		BufferAlternateBtn = { link = "BufferAlternate" },
		BufferAlternateMod = { link = "BufferAlternate" },
		BufferAlternateModBtn = { bg = theme.ui.bg_tabline, fg = theme.vcs.changed },
		BufferAlternateTarget = { bg = theme.ui.bg_tabline, fg = palette.dragonRed, bold = true },
		BufferAlternateIndex = { bg = theme.ui.bg_tabline, fg = palette.dragonPink, bold = true },
		BufferAlternateNumber = { bg = theme.ui.bg_tabline, fg = palette.dragonPink, bold = true },
		BufferTabpages = { bg = theme.ui.bg_tabline, fg = palette.dragonWhite },
		BufferTabpageFill = { link = "BufferlineFill" },
		BufferTabpagesSep = { link = "BufferTabpages" },

		-- Nvim-Navic
		NavicIconsFile = { link = "Directory" },
		NavicIconsModule = { link = "@module" },
		NavicIconsNamespace = { link = "@module" },
		NavicIconsPackage = { link = "@module" },
		NavicIconsClass = { link = "Type" },
		NavicIconsMethod = { link = "@function.method" },
		NavicIconsProperty = { link = "@property" },
		NavicIconsField = { link = "@variable.member" },
		NavicIconsConstructor = { link = "@constructor" },
		NavicIconsEnum = { link = "Type" },
		NavicIconsInterface = { link = "Type" },
		NavicIconsFunction = { link = "Function" },
		NavicIconsVariable = { link = "@variable" },
		NavicIconsConstant = { link = "Constant" },
		NavicIconsString = { link = "String" },
		NavicIconsNumber = { link = "Number" },
		NavicIconsBoolean = { link = "Boolean" },
		NavicIconsArray = { link = "Type" },
		NavicIconsObject = { link = "Type" },
		NavicIconsKey = { link = "Identifier" },
		NavicIconsNull = { link = "Type" },
		NavicIconsEnumMember = { link = "Constant" },
		NavicIconsStruct = { link = "Structure" },
		NavicIconsEvent = { link = "Structure" },
		NavicIconsOperator = { link = "Operator" },
		NavicIconsTypeParameter = { link = "Type" },
		NavicText = { fg = theme.ui.fg },
		NavicSeparator = { fg = theme.ui.fg },

		-- Aerial icons
		AerialFileIcon = { link = "Directory" },
		AerialModuleIcon = { link = "@module" },
		AerialNamespaceIcon = { link = "@module" },
		AerialPackageIcon = { link = "@module" },
		AerialClassIcon = { link = "Type" },
		AerialMethodIcon = { link = "@function.method" },
		AerialPropertyIcon = { link = "@property" },
		AerialFieldIcon = { link = "@variable.member" },
		AerialConstructorIcon = { link = "@constructor" },
		AerialEnumIcon = { link = "Type" },
		AerialInterfaceIcon = { link = "Type" },
		AerialFunctionIcon = { link = "Function" },
		AerialVariableIcon = { link = "@variable" },
		AerialConstantIcon = { link = "Constant" },
		AerialStringIcon = { link = "String" },
		AerialNumberIcon = { link = "Number" },
		AerialBooleanIcon = { link = "Boolean" },
		AerialArrayIcon = { link = "Type" },
		AerialObjectIcon = { link = "Type" },
		AerialKeyIcon = { link = "Identifier" },
		AerialNullIcon = { link = "Type" },
		AerialEnumMemberIcon = { link = "Constant" },
		AerialStructIcon = { link = "Structure" },
		AerialEventIcon = { link = "Structure" },
		AerialOperatorIcon = { link = "Operator" },
		AerialTypeParameterIcon = { link = "Type" },

		-- Satellite
		SatelliteBar = { bg = palette.fujiGray },
		SatelliteCursor = { fg = palette.fujiWhite },
		SatelliteMark = { fg = palette.waveAqua2 },

		-- Whichkey
		WhichKey = { fg = theme.syn.operator },
		WhichKeyBorder = { bg = theme.ui.float.bg, fg = theme.ui.float.fg_border },
		WhichKeyIcon = { link = "Label" },

		-- Yanky
		YankyYanked = { bg = palette.winterYellow },
		YankyPut = { bg = palette.winterRed },

		-- Spectre
		SpectreFaint = { fg = theme.ui.fg_gray, italic = false },

		-- Noice
		NoiceVirtualText = { fg = theme.ui.bg_search },
		NoicePopupBorder = { fg = theme.ui.bg_p2, bg = theme.ui.bg_p1 },
		NoiceLspProgressTitle = { fg = theme.ui.fg_gray },
	}
end

return M
