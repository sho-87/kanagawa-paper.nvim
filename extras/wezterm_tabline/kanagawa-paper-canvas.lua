-----------------------------------------------------------------------------
--- Kanagawa Paper Canvas
--- Upstream: https://github.com/thesimonho/kanagawa-paper.nvim/master/extras/wezterm_tabline/kanagawa-paper-canvas.lua
--- URL: https://github.com/michaelbrusegard/tabline.wez
-----------------------------------------------------------------------------

local M = {}

M.theme_overrides = {
  normal_mode = {
    a = { fg = "#ecece8", bg = "#618bb6" },
    b = { fg = "#618bb6", bg = "#ecece8" },
    c = { fg = "#ecece8", bg = "#cbc8bc" },
  },
  copy_mode = {
    a = { fg = "#ecece8", bg = "#ba4e5a" },
    b = { fg = "#ba4e5a", bg = "#ecece8" },
    c = { fg = "#ecece8", bg = "#cbc8bc" },
  },
  search_mode = {
    a = { fg = "#ecece8", bg = "#5e56a1" },
    b = { fg = "#5e56a1", bg = "#ecece8" },
    c = { fg = "#ecece8", bg = "#cbc8bc" },
  },
  window_mode = {
    a = { fg = "#ecece8", bg = "#96b7d1" },
    b = { fg = "#96b7d1", bg = "#ecece8" },
    c = { fg = "#ecece8", bg = "#cbc8bc" },
  },
  resize_mode = {
    a = { fg = "#ecece8", bg = "#b8805e" },
    b = { fg = "#b8805e", bg = "#ecece8" },
    c = { fg = "#ecece8", bg = "#cbc8bc" },
  },
}

return M
