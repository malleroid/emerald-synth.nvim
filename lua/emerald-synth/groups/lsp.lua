local M = {}

function M.get(p)
  return {
    -- Diagnostic
    DiagnosticError = { fg = p.error },
    DiagnosticWarn = { fg = p.warning },
    DiagnosticInfo = { fg = p.info },
    DiagnosticHint = { fg = p.hint },
    DiagnosticOk = { fg = p.success },

    -- Diagnostic virtual text
    DiagnosticVirtualTextError = { fg = p.error, bg = "#ff2a6d15" },
    DiagnosticVirtualTextWarn = { fg = p.warning, bg = "#ffcc6615" },
    DiagnosticVirtualTextInfo = { fg = p.info, bg = "#8b9cf715" },
    DiagnosticVirtualTextHint = { fg = p.hint, bg = "#4dd0e115" },

    -- Diagnostic underline
    DiagnosticUnderlineError = { sp = p.error, undercurl = true },
    DiagnosticUnderlineWarn = { sp = p.warning, undercurl = true },
    DiagnosticUnderlineInfo = { sp = p.info, undercurl = true },
    DiagnosticUnderlineHint = { sp = p.hint, undercurl = true },

    -- Diagnostic sign
    DiagnosticSignError = { fg = p.error },
    DiagnosticSignWarn = { fg = p.warning },
    DiagnosticSignInfo = { fg = p.info },
    DiagnosticSignHint = { fg = p.hint },

    -- Diagnostic floating
    DiagnosticFloatingError = { fg = p.error },
    DiagnosticFloatingWarn = { fg = p.warning },
    DiagnosticFloatingInfo = { fg = p.info },
    DiagnosticFloatingHint = { fg = p.hint },

    -- Diagnostic misc
    DiagnosticUnnecessary = { fg = p.bright_black, italic = true },
    DiagnosticDeprecated = { fg = p.bright_black, strikethrough = true },

    -- LSP references
    LspReferenceText = { bg = "#00ffcc15" },
    LspReferenceRead = { bg = "#00ffcc20" },
    LspReferenceWrite = { bg = "#00ffcc30" },

    -- LSP misc
    LspSignatureActiveParameter = { fg = p.accent, bold = true },
    LspCodeLens = { fg = p.bright_black },
    LspInlayHint = { fg = p.bright_black, bg = p.bg_medium },
    LspInfoBorder = { fg = p.accent_border },

    -- LSP Semantic Tokens (delegate to TreeSitter by default)
    ["@lsp.type.variable"] = {},
    ["@lsp.type.parameter"] = {},
    ["@lsp.type.property"] = {},
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
  }
end

return M
