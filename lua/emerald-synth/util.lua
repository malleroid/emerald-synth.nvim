local M = {}

--- Blend a foreground color onto a background color with the given alpha.
--- @param fg string "#RRGGBB"
--- @param bg string "#RRGGBB"
--- @param alpha number 0.0–1.0
--- @return string "#RRGGBB"
function M.blend(fg, bg, alpha)
  local fr, fg_, fb = tonumber(fg:sub(2, 3), 16), tonumber(fg:sub(4, 5), 16), tonumber(fg:sub(6, 7), 16)
  local br, bg_, bb = tonumber(bg:sub(2, 3), 16), tonumber(bg:sub(4, 5), 16), tonumber(bg:sub(6, 7), 16)
  local r = math.floor(fr * alpha + br * (1 - alpha) + 0.5)
  local g = math.floor(fg_ * alpha + bg_ * (1 - alpha) + 0.5)
  local b = math.floor(fb * alpha + bb * (1 - alpha) + 0.5)
  return string.format("#%02x%02x%02x", r, g, b)
end

return M
