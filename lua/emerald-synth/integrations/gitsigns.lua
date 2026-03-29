local util = require("emerald-synth.util")

local M = {}

function M.get(p)
  local blend = function(fg, alpha) return util.blend(fg, p.bg, alpha) end

  return {
    GitSignsAdd = { fg = p.green },
    GitSignsChange = { fg = p.yellow },
    GitSignsDelete = { fg = p.red },
    GitSignsCurrentLineBlame = { fg = p.bright_black, italic = true },
    GitSignsAddPreview = { bg = blend(p.green, 0x15 / 0xFF) },
    GitSignsDeletePreview = { bg = blend(p.red, 0x15 / 0xFF) },
    GitSignsAddInline = { bg = blend(p.green, 0x25 / 0xFF) },
    GitSignsDeleteInline = { bg = blend(p.red, 0x25 / 0xFF) },
    GitSignsChangeInline = { bg = blend(p.yellow, 0x25 / 0xFF) },
  }
end

return M
