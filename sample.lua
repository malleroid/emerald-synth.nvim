-- Emerald Synth: syntax showcase
-- This file exercises all syntax highlight groups.

local M = {}

---@class Theme
---@field name string
---@field variant "dark" | "light"
---@field colors table<string, string>

local PALETTE_SIZE = 16
local DEFAULT_ALPHA = 0.25

---Build a color palette from TOML source.
---@param path string Path to palette.toml
---@return Theme
function M.build(path)
  local ok, data = pcall(require, "toml")
  if not ok then
    error("toml module not found: " .. tostring(data))
  end

  local raw = data.parse(io.open(path, "r"):read("*a"))
  local colors = {}

  for key, hex in pairs(raw.ansi) do
    colors[key] = string.format("#%s", hex:gsub("^#", ""))
  end

  return {
    name = raw.meta.name or "Untitled",
    variant = raw.meta.variant,
    colors = colors,
  }
end

---Blend two hex colors with alpha.
---@param fg string "#RRGGBB"
---@param bg string "#RRGGBB"
---@param alpha number 0.0 to 1.0
---@return string
function M.blend(fg, bg, alpha)
  local fr, fg_, fb = fg:match("#(%x%x)(%x%x)(%x%x)")
  local br, bg_, bb = bg:match("#(%x%x)(%x%x)(%x%x)")

  local r = math.floor(tonumber(fr, 16) * alpha + tonumber(br, 16) * (1 - alpha))
  local g = math.floor(tonumber(fg_, 16) * alpha + tonumber(bg_, 16) * (1 - alpha))
  local b = math.floor(tonumber(fb, 16) * alpha + tonumber(bb, 16) * (1 - alpha))

  return string.format("#%02x%02x%02x", r, g, b)
end

-- Apply theme to Neovim
if vim.g.colors_name ~= nil then
  local theme = M.build("palette.toml")
  local is_dark = theme.variant == "dark"

  vim.api.nvim_set_hl(0, "Normal", {
    fg = theme.colors.fg,
    bg = is_dark and theme.colors.bg or "#ffffff",
  })

  vim.notify(
    string.format("[%s] %d colors loaded (alpha=%.2f)", theme.name, PALETTE_SIZE, DEFAULT_ALPHA),
    vim.log.levels.INFO
  )
end

return M
