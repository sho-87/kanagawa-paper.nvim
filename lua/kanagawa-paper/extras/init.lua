local Util = require("kanagawa-paper.lib.util")

local M = {}

-- map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string, subdir?: string, sep?:string}>
-- stylua: ignore
M.extras = {
  -- aerc             = { ext = "ini", url = "https://git.sr.ht/~rjarry/aerc/", label = "Aerc" },
  alacritty        = { ext = "toml", url = "https://github.com/alacritty/alacritty", label = "Alacritty" },
  -- delta            = { ext = "gitconfig", url = "https://github.com/dandavison/delta", label = "Delta" },
  -- discord          = { ext = "css", url ="https://betterdiscord.app/", label = "(Better-)Discord"},
  -- dunst            = { ext = "dunstrc", url = "https://dunst-project.org/", label = "Dunst" },
  -- fish             = { ext = "fish", url = "https://fishshell.com/docs/current/index.html", label = "Fish" },
  -- fish_themes      = { ext = "theme", url = "https://fishshell.com/docs/current/interactive.html#syntax-highlighting", label = "Fish Themes" },
  -- foot             = { ext = "ini", url = "https://codeberg.org/dnkl/foot", label = "Foot" },
  -- fuzzel           = { ext = "ini", url = "https://codeberg.org/dnkl/fuzzel", label = "Fuzzel" },
  fzf              = { ext = "sh", url = "https://github.com/junegunn/fzf/tree/master#environment-variables", label = "Fzf" },
  ghostty          = { ext = "", url = "https://github.com/ghostty-org/ghostty", label = "Ghostty" },
  -- gitui            = { ext = "ron", url = "https://github.com/extrawurst/gitui", label = "GitUI" },
  -- gnome_terminal   = { ext = "dconf", url = "https://gitlab.gnome.org/GNOME/gnome-terminal", label = "GNOME Terminal" },
  -- helix            = { ext = "toml", url = "https://helix-editor.com/", label = "Helix" },
  -- iterm            = { ext = "itermcolors", url = "https://iterm2.com/", label = "iTerm" },
  kitty            = { ext = "conf", url = "https://sw.kovidgoyal.net/kitty/conf.html", label = "Kitty" },
  -- lazygit          = { ext = "yml", url = "https://github.com/jesseduffield/lazygit", label = "Lazygit" },
  -- lua              = { ext = "lua", url = "https://www.lua.org", label = "Lua Table for testing" },
  -- prism            = { ext = "js", url = "https://prismjs.com", label = "Prism" },
  -- process_compose  = { ext = "yaml", url = "https://f1bonacc1.github.io/process-compose/", label = "process-compose" },
  -- slack            = { ext = "txt", url = "https://slack.com", label = "Slack" },
  -- sublime          = { ext = "tmTheme", url = "https://www.sublimetext.com/docs/themes", label = "Sublime Text" },
  -- spotify_player   = { ext = "toml", url = "https://github.com/aome510/spotify-player", label = "Spotify Player" },
  -- tmux             = { ext = "tmux", url = "https://github.com/tmux/tmux/wiki", label = "Tmux" },
  terminator       = { ext = "conf", url = "https://gnome-terminator.readthedocs.io/en/latest/config.html", label = "Terminator" },
  termux           = { ext = "properties", url = "https://termux.dev/", label = "Termux" },
  tilix            = { ext = "jsonc", url = "https://github.com/gnunn1/tilix", label = "Tilix" },
  wezterm             = { ext = "toml", url = "https://wezterm.org/config/appearance.html", label = "Wezterm" },
  wezterm_tabline     = { ext = "lua", url = "https://github.com/michaelbrusegard/tabline.wez", label = "Wezterm Tabline" },
  windows_terminal = { ext = "jsonc", url = "https://learn.microsoft.com/en-us/windows/terminal/customize-settings/color-schemes", label = "Windows Terminal" },
  -- xfceterm         = { ext = "theme", url = "https://docs.xfce.org/apps/terminal/advanced", label = "Xfce Terminal" },
  -- xresources       = { ext = "Xresources", url = "https://wiki.archlinux.org/title/X_resources", label = "Xresources" },
  -- yazi             = { ext = "toml", url = "https://github.com/sxyazi/yazi", label = "Yazi" },
  -- vim              = { ext = "vim", url = "https://vimhelp.org/", label = "Vim", subdir = "colors", sep = "-" },
  -- vimium           = { ext = "css", url = "https://vimium.github.io/", label = "Vimium" },
  vscode_terminal           = { ext = "jsonc", url = "https://code.visualstudio.com/api/references/theme-color", label = "VSCode Terminal" },
  -- zathura          = { ext = "zathurarc", url = "https://pwmt.org/projects/zathura/", label = "Zathura" },
  -- zellij           = { ext = "kdl", url = "https://zellij.dev/", label = "Zellij" },
}

function M.setup()
	local kanagawa = require("kanagawa-paper")
	vim.o.background = "dark"

	local themes = {
		ink = "Ink",
		canvas = "Canvas",
	}

	---@type string[]
	local names = vim.tbl_keys(M.extras)
	table.sort(names)

	for _, extra in ipairs(names) do
		local info = M.extras[extra]
		local plugin = require("kanagawa-paper.extras." .. extra)
		for theme, theme_name in pairs(themes) do
			local colors, groups, opts = kanagawa.load({ theme = theme, all_plugins = true })
			local fname = extra
				.. (info.subdir and "/" .. info.subdir .. "/" or "")
				.. "/kanagawa-paper"
				.. (info.sep or "-")
				.. theme
				.. "."
				.. info.ext
			fname = string.gsub(fname, "%.$", "") -- remove trailing dot when no extension
			local path = vim.fn.expand("%:p:h:h") .. "/extras/" .. fname

			colors.theme["_url"] = info.url
			colors.theme["_upstream_url"] = "https://github.com/thesimonho/kanagawa-paper.nvim/master/extras/" .. fname
			colors.theme["_package_name"] = "Kanagawa Paper"
			colors.theme["_style_name"] = "Kanagawa Paper " .. theme_name
			colors.theme["_name"] = "kanagawa-paper-" .. theme
			colors.theme["_theme"] = theme
			print("[write] " .. fname)

			Util.write(path, plugin.generate(colors.theme, groups, opts))
		end
	end
end

return M
