local M = {}

function M.get(p)
  return {
    TelescopeNormal = { fg = p.fg, bg = p.bg_medium },
    TelescopeBorder = { fg = p.accent_border, bg = p.bg_medium },
    TelescopeTitle = { fg = p.accent, bold = true },
    TelescopePreviewNormal = { fg = p.fg, bg = p.bg },
    TelescopePreviewTitle = { fg = p.accent, bold = true },
    TelescopePreviewBorder = { fg = p.accent_border, bg = p.bg },
    TelescopePromptNormal = { fg = p.fg, bg = p.bg_sidebar },
    TelescopePromptTitle = { fg = p.accent, bold = true },
    TelescopePromptBorder = { fg = p.accent, bg = p.bg_sidebar },
    TelescopePromptPrefix = { fg = p.accent },
    TelescopeResultsNormal = { fg = p.fg, bg = p.bg_medium },
    TelescopeResultsTitle = { fg = p.accent, bold = true },
    TelescopeSelection = { fg = p.fg, bg = p.selection_bg },
    TelescopeSelectionCaret = { fg = p.accent },
    TelescopeMatching = { fg = p.accent, bold = true },
  }
end

return M
