local M = {}

function M.get(p)
  return {
    GitSignsAdd = { fg = p.green },
    GitSignsChange = { fg = p.yellow },
    GitSignsDelete = { fg = p.red },
    GitSignsCurrentLineBlame = { fg = p.bright_black, italic = true },
    GitSignsAddPreview = { bg = "#00ffcc15" },
    GitSignsDeletePreview = { bg = "#ff2a6d15" },
    GitSignsAddInline = { bg = "#00ffcc25" },
    GitSignsDeleteInline = { bg = "#ff2a6d25" },
    GitSignsChangeInline = { bg = "#ffcc6625" },
  }
end

return M
