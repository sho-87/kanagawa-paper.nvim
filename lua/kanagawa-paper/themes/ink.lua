local color = require("kanagawa-paper.lib.color")

local M = {}

---@param opts KanagawaConfig
---@param palette PaletteColors
---@return ThemeColors
M.get = function(opts, palette)
	---@type ThemeColors
	return {
		modes = {
			normal = palette.dragonYellow,
			insert = palette.dragonRed,
			visual = palette.springViolet1,
			replace = palette.dragonRed,
			command = palette.dragonYellow,
		},
		ui = {
			fg = palette.fujiWhite,
			fg_gray = palette.dragonGray2,
			fg_dark = palette.dragonBlack3,
			fg_dim = palette.dragonBlack5,
			fg_reverse = palette.waveBlue1,
			bg_m4 = palette.sumiInkn1,
			bg_m3 = palette.sumiInk0,
			bg_m2 = palette.sumiInk1,
			bg_m1 = palette.sumiInk2,
			bg_dim = palette.sumiInk1,
			bg = palette.sumiInk3,
			bg_p1 = palette.sumiInk4,
			bg_p2 = palette.sumiInk5,
			bg_gutter = opts.gutter and palette.sumiInk4 or "none",
			bg_search = palette.springViolet1,
			bg_cursorline = palette.sumiInk5,
			bg_visual = palette.lotusViolet2,
			bg_statusline = palette.sumiInk4,
			header1 = palette.dragonViolet,
			header2 = palette.dragonOrange,
			special = palette.springViolet1,
			nontext = palette.sumiInk6,
			whitespace = palette.sumiInk6,
			win_separator = palette.dragonViolet,
			indent = palette.sumiInk5,
			indent_scope = palette.dragonViolet,
			picker = palette.dragonRed,
			mark = palette.waveAqua2,
			scrollbar = palette.sumiInk5,
			tabline = {
				bg = palette.sumiInk0,
				fg_selected = palette.dragonWhite,
				bg_selected = palette.sumiInk3,
				fg_inactive = palette.dragonBlack5,
				bg_inactive = palette.sumiInk0,
				fg_alternate = palette.dragonPink,
				bg_alternate = palette.sumiInk0,
				indicator = palette.dragonBlue,
			},
			pmenu = {
				fg = palette.fujiWhite,
				fg_sel = "none", -- This is important to make highlights pass-through
				bg = palette.sumiInk4,
				bg_sel = palette.sumiInk6,
				bg_sbar = palette.sumiInk5,
				bg_thumb = palette.sumiInk6,
			},
			float = {
				fg = palette.oldWhite,
				bg = palette.sumiInk4,
				fg_border = palette.sumiInk6,
				bg_border = "none",
			},
		},
		accent = {
			accent1 = palette.dragonBlue,
			accent2 = palette.dragonOrange,
			accent3 = palette.waveAqua1,
			accent4 = palette.dragonGray3,
			accent5 = palette.dragonRed,
			invert = palette.sumiInk4,
		},
		rainbow = {
			rainbow1 = palette.dragonRed,
			rainbow2 = palette.dragonPink,
			rainbow3 = palette.dragonBlue,
			rainbow4 = palette.dragonOrange2,
			rainbow5 = palette.dragonGreen,
			rainbow6 = palette.dragonAsh,
			rainbow7 = palette.dragonTeal,
		},
		syn = {
			attribute = palette.dragonYellow,
			comment = palette.fujiGray,
			constant = palette.dragonOrange,
			deprecated = palette.katanaGray,
			fun = palette.dragonBlue2,
			identifier = palette.dragonYellow,
			keyword = palette.dragonPink,
			member = palette.fujiWhite,
			number = palette.dragonPink,
			operator = palette.dragonRed,
			parameter = palette.dragonGray,
			preproc = palette.dragonRed,
			punct = palette.dragonGray2,
			regex = palette.dragonRed,
			statement = palette.dragonViolet,
			string = palette.dragonGreen2,
			symbol = palette.dragonRed,
			type = palette.dragonAqua,
			variable = "none",
			special1 = palette.dragonYellow,
			special2 = palette.dragonRed,
			special3 = palette.springViolet1,
		},
		vcs = {
			added = palette.dragonGreen,
			added_light = color(palette.dragonGreen):blend(palette.sumiInk3, 0.9):to_hex(),
			removed = palette.dragonRed,
			removed_light = color(palette.dragonRed):blend(palette.sumiInk3, 0.9):to_hex(),
			changed = palette.dragonYellow,
			changed_light = color(palette.dragonYellow):blend(palette.sumiInk3, 0.9):to_hex(),
		},
		diff = {
			add = palette.dragonGreen,
			add_light = color(palette.dragonGreen):blend(palette.sumiInk3, 0.9):to_hex(),
			delete = palette.dragonRed,
			delete_light = color(palette.dragonRed):blend(palette.sumiInk3, 0.9):to_hex(),
			change = palette.dragonYellow,
			change_light = color(palette.dragonYellow):blend(palette.sumiInk3, 0.9):to_hex(),
			text = palette.dragonBlue,
			text_light = color(palette.dragonBlue):blend(palette.sumiInk3, 0.9):to_hex(),
		},
		diag = {
			error = palette.dragonRed,
			error_light = color(palette.dragonRed):blend(palette.sumiInk3, 0.9):to_hex(),
			ok = palette.dragonGreen,
			ok_light = color(palette.dragonGreen):blend(palette.sumiInk3, 0.9):to_hex(),
			warning = palette.dragonYellow,
			warning_light = color(palette.dragonYellow):blend(palette.sumiInk3, 0.9):to_hex(),
			info = palette.dragonBlue,
			info_light = color(palette.dragonBlue):blend(palette.sumiInk3, 0.9):to_hex(),
			hint = palette.dragonAqua,
			hint_light = color(palette.dragonAqua):blend(palette.sumiInk3, 0.9):to_hex(),
		},
		term = {
			black = palette.dragonBlack0,
			red = palette.dragonRed,
			green = palette.dragonGreen2,
			yellow = palette.dragonYellow,
			blue = palette.dragonBlue2,
			magenta = palette.dragonPink,
			cyan = palette.dragonAqua,
			white = palette.oldWhite,
			black_bright = palette.dragonGray,
			red_bright = palette.waveRed,
			green_bright = palette.springGreen,
			yellow_bright = palette.carpYellow,
			blue_bright = palette.springBlue,
			magenta_bright = palette.springViolet1,
			cyan_bright = palette.waveAqua2,
			white_bright = palette.dragonWhite,
			indexed1 = palette.dragonOrange,
			indexed2 = palette.dragonRed,
		},
	}
end

return M
