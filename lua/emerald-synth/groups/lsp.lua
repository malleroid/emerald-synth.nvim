local util = require("emerald-synth.util")

local M = {}

function M.get(p)
  local blend = function(fg, alpha) return util.blend(fg, p.bg, alpha) end

  return {
    -- Diagnostic
    DiagnosticError = { fg = p.error },
    DiagnosticWarn = { fg = p.warning },
    DiagnosticInfo = { fg = p.info },
    DiagnosticHint = { fg = p.hint },
    DiagnosticOk = { fg = p.success },

    -- Diagnostic virtual text
    DiagnosticVirtualTextError = { fg = p.error, bg = blend(p.error, 0x15 / 0xFF) },
    DiagnosticVirtualTextWarn = { fg = p.warning, bg = blend(p.warning, 0x15 / 0xFF) },
    DiagnosticVirtualTextInfo = { fg = p.info, bg = blend(p.info, 0x15 / 0xFF) },
    DiagnosticVirtualTextHint = { fg = p.hint, bg = blend(p.hint, 0x15 / 0xFF) },

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
    LspReferenceText = { bg = blend(p.accent, 0x15 / 0xFF) },
    LspReferenceRead = { bg = blend(p.accent, 0x20 / 0xFF) },
    LspReferenceWrite = { bg = blend(p.accent, 0x30 / 0xFF) },

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
