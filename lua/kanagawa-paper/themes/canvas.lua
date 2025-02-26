local color = require("kanagawa-paper.lib.color")

local M = {}

---@param opts KanagawaConfig
---@param palette PaletteColors
---@return ThemeColors
M.get = function(opts, palette)
	return {
		modes = {
			normal = palette.canvasTeal2,
			insert = palette.canvasRed,
			visual = palette.canvasViolet2,
			replace = palette.canvasRed,
			command = palette.canvasTeal2,
		},
		ui = {
			fg = palette.canvasInk1,
			fg_gray = palette.canvasGray1,
			fg_dark = palette.canvasInk0,
			fg_dim = palette.canvasInk2,
			fg_reverse = palette.canvasGray1,
			bg_m4 = palette.canvasGray3,
			bg_m3 = palette.canvasWhite0,
			bg_m2 = palette.canvasWhite1,
			bg_m1 = palette.canvasWhite2,
			bg_dim = palette.canvasWhite2,
			bg = palette.canvasWhite3,
			bg_p1 = palette.canvasWhite4,
			bg_p2 = palette.canvasWhite5,
			bg_gutter = opts.gutter and palette.canvasWhite4 or "none",
			bg_search = palette.canvasViolet1,
			bg_cursorline = palette.canvasWhite1,
			bg_visual = palette.canvasViolet1,
			bg_statusline = palette.canvasWhite0,
			border = palette.canvasGray3,
			header1 = palette.canvasBlue3,
			header2 = palette.canvasOrange,
			special = palette.canvasTeal1,
			nontext = palette.canvasGray2,
			whitespace = palette.canvasGray2,
			win_separator = palette.canvasViolet1,
			indent = palette.canvasWhite1,
			indent_scope = palette.canvasGray2,
			picker = palette.canvasRed,
			mark = palette.canvasBlue4,
			scrollbar = palette.canvasGray2,
			tabline = {
				bg = palette.canvasWhite1,
				fg_selected = palette.canvasInk0,
				bg_selected = palette.canvasWhite3,
				fg_inactive = palette.canvasGray2,
				bg_inactive = palette.canvasWhite1,
				fg_alternate = palette.canvasPink,
				bg_alternate = palette.canvasWhite1,
				indicator = palette.canvasBlue4,
			},
			pmenu = {
				fg = palette.canvasInk1,
				fg_sel = "none", -- This is important to make highlights pass-through
				fg_border = palette.canvasWhite2,
				bg_border = palette.canvasWhite5,
				bg = palette.canvasWhite5,
				bg_sel = palette.canvasWhite1,
				bg_sbar = palette.canvasWhite5,
				bg_thumb = palette.canvasGray2,
			},
			float = {
				fg = palette.canvasInk1,
				bg = palette.canvasWhite5,
				fg_border = palette.canvasWhite2,
				bg_border = palette.canvasWhite5,
			},
		},
		accent = {
			accent1 = palette.canvasBlue4,
			accent2 = palette.canvasOrange,
			accent3 = palette.canvasAqua,
			accent4 = palette.canvasGreen2,
			accent5 = palette.canvasRed,
			invert = palette.canvasWhite2,
		},
		rainbow = {
			rainbow1 = palette.canvasGray1,
			rainbow2 = palette.canvasPink,
			rainbow3 = palette.canvasBlue4,
			rainbow4 = palette.canvasOrange2,
			rainbow5 = palette.canvasGreen,
			rainbow6 = palette.canvasAqua,
			rainbow7 = palette.canvasTeal2,
		},
		syn = {
			attribute = palette.canvasYellow2,
			comment = palette.canvasGray2,
			constant = palette.canvasRed,
			deprecated = palette.canvasGray2,
			fun = palette.canvasOrange,
			identifier = palette.canvasOrange,
			keyword = palette.canvasBlue3,
			member = palette.canvasYellow2,
			number = palette.canvasViolet3,
			operator = palette.canvasPink,
			parameter = palette.canvasGray0,
			preproc = palette.canvasPink,
			punct = palette.canvasGray1,
			regex = palette.canvasRed,
			statement = palette.canvasViolet3,
			string = palette.canvasGreen2,
			symbol = palette.canvasPink,
			type = palette.canvasAqua2,
			variable = "none",
			special1 = palette.canvasTeal2,
			special2 = palette.canvasRed,
			special3 = palette.canvasBlue5,
		},
		vcs = {
			added = palette.canvasGreen2,
			added_light = color(palette.canvasGreen2):blend(palette.canvasWhite3, 0.9):to_hex(),
			removed = palette.canvasRed2,
			removed_light = color(palette.canvasRed2):blend(palette.canvasWhite3, 0.9):to_hex(),
			changed = palette.canvasYellow2,
			changed_light = color(palette.canvasYellow2):blend(palette.canvasWhite3, 0.9):to_hex(),
		},
		diff = {
			add = palette.canvasGreen2,
			add_light = color(palette.canvasGreen2):blend(palette.canvasWhite3, 0.9):to_hex(),
			delete = palette.canvasRed2,
			delete_light = color(palette.canvasRed2):blend(palette.canvasWhite3, 0.9):to_hex(),
			change = palette.canvasYellow2,
			change_light = color(palette.canvasYellow2):blend(palette.canvasWhite3, 0.9):to_hex(),
			text = palette.canvasTeal1,
			text_light = color(palette.canvasTeal1):blend(palette.canvasWhite3, 0.9):to_hex(),
		},
		diag = {
			ok = palette.canvasGreen2,
			ok_light = color(palette.canvasGreen2):blend(palette.canvasWhite3, 0.9):to_hex(),
			error = palette.canvasRed2,
			error_light = color(palette.canvasRed2):blend(palette.canvasWhite3, 0.9):to_hex(),
			warning = palette.canvasOrange2,
			warning_light = color(palette.canvasOrange2):blend(palette.canvasWhite3, 0.9):to_hex(),
			info = palette.canvasTeal1,
			info_light = color(palette.canvasTeal1):blend(palette.canvasWhite3, 0.9):to_hex(),
			hint = palette.canvasAqua2,
			hint_light = color(palette.canvasAqua2):blend(palette.canvasWhite3, 0.9):to_hex(),
		},
		term = {
			black = palette.canvasInk0,
			red = palette.canvasRed,
			green = palette.canvasGreen,
			yellow = palette.canvasYellow,
			blue = palette.canvasBlue4,
			magenta = palette.canvasPink,
			cyan = palette.canvasAqua,
			white = palette.canvasInk1,
			black_bright = palette.canvasInk1,
			red_bright = palette.canvasRed2,
			green_bright = palette.canvasGreen2,
			yellow_bright = palette.canvasYellow2,
			blue_bright = palette.canvasTeal2,
			magenta_bright = palette.canvasViolet3,
			cyan_bright = palette.canvasAqua2,
			white_bright = palette.canvasInk2,
			indexed1 = palette.canvasOrange,
			indexed2 = palette.canvasRed,
		},
	}
end
return M
