-- Auto-generated from palette.toml — edit palette.toml and regenerate
local M = {}

M.colors = {
  -- Core
  bg = "#0d0221",
  fg = "#00ffcc",
  cursor = "#ff79c6",
  cursor_text = "#0d0221",
  selection_fg = "#00ffcc",
  selection_bg = "#2e6b5f",
  split_divider = "#4a3565",
  search_fg = "#ffcc66",
  search_bg = "#4a3800",
  search_selected_fg = "#0d0221",
  search_selected_bg = "#ff5c8a",

  -- Background shades
  bg_darkest = "#0a0118",
  bg_medium = "#150530",
  bg_sidebar = "#240d49",
  bg_raised = "#2b1451",

  -- Foreground shades
  fg_muted = "#8d73af",
  fg_dim = "#60e0d0",
  fg_dark = "#00d4aa",

  -- Accent
  accent = "#ff79c6",
  accent_dim = nil, -- set after M.colors is defined
  accent_text = "#ff9ed0",
  accent_fg = "#0d0221",
  accent_border = "#d964a8",

  -- Semantic
  success = "#00ffcc",
  warning = "#ffcc66",
  error = "#ff2a6d",
  info = "#8b9cf7",
  hint = "#4dd0e1",

  -- ANSI
  black = "#0a0118",
  red = "#ff2a6d",
  green = "#00e67e",
  yellow = "#ffcc66",
  blue = "#8b9cf7",
  magenta = "#ff79c6",
  cyan = "#4dd0e1",
  white = "#f0e6ff",

  bright_black = "#6a5585",
  bright_red = "#ff5c8a",
  bright_green = "#40ffdd",
  bright_yellow = "#ffe099",
  bright_blue = "#b0b8fc",
  bright_magenta = "#ff9ed0",
  bright_cyan = "#7ee0ec",
  bright_white = "#ffffff",

  -- Syntax (from palette.toml [syntax])
  syn_keyword = "#8b9cf7",
  syn_function = "#4dd0e1",
  syn_string = "#ff79c6",
  syn_comment = "#6a5585",
  syn_type = "#ffcc66",
  syn_number = "#ffe099",
  syn_boolean = "#ffe099",
  syn_constant = "#ffe099",
  syn_operator = "#00ffcc",
  syn_property = "#4dd0e1",
  syn_tag = "#ff2a6d",
  syn_punctuation = "#6a5585",

  -- Derived
  none = "NONE",
}

local util = require("emerald-synth.util")
M.colors.accent_dim = util.blend(M.colors.accent, M.colors.bg, 0x40 / 0xFF)

return M
