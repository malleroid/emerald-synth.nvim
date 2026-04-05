local M = {}

function M.get(p)
  return {
    -- Identifiers
    ["@variable"] = { fg = p.fg },
    ["@variable.builtin"] = { fg = p.bright_red },
    ["@variable.parameter"] = { fg = p.fg },
    ["@variable.member"] = { fg = p.syn_property },

    ["@constant"] = { fg = p.syn_constant },
    ["@constant.builtin"] = { fg = p.syn_constant },
    ["@constant.macro"] = { fg = p.syn_constant },

    ["@module"] = { fg = p.syn_type },
    ["@label"] = { fg = p.cyan },

    -- Literals
    ["@string"] = { fg = p.syn_string },
    ["@string.documentation"] = { fg = p.syn_comment, italic = true },
    ["@string.regexp"] = { fg = p.bright_magenta },
    ["@string.escape"] = { fg = p.bright_magenta },
    ["@string.special"] = { fg = p.cyan },
    ["@string.special.path"] = { fg = p.cyan },
    ["@string.special.symbol"] = { fg = p.syn_constant },
    ["@string.special.url"] = { fg = p.accent_text, underline = true },

    ["@character"] = { fg = p.syn_string },
    ["@character.special"] = { fg = p.bright_magenta },

    ["@boolean"] = { fg = p.syn_boolean },
    ["@number"] = { fg = p.syn_number },
    ["@number.float"] = { fg = p.syn_number },

    -- Types
    ["@type"] = { fg = p.syn_type },
    ["@type.builtin"] = { fg = p.syn_type },
    ["@type.definition"] = { fg = p.syn_type },

    ["@attribute"] = { fg = p.syn_type },
    ["@property"] = { fg = p.syn_property },

    -- Functions
    ["@function"] = { fg = p.syn_function },
    ["@function.builtin"] = { fg = p.syn_function },
    ["@function.call"] = { fg = p.syn_function },
    ["@function.macro"] = { fg = p.magenta },
    ["@function.method"] = { fg = p.syn_function },
    ["@function.method.call"] = { fg = p.syn_function },

    ["@constructor"] = { fg = p.syn_type },
    ["@operator"] = { fg = p.syn_operator },

    -- Keywords
    ["@keyword"] = { fg = p.syn_keyword },
    ["@keyword.modifier"] = { fg = p.syn_keyword },
    ["@keyword.type"] = { fg = p.syn_keyword },
    ["@keyword.coroutine"] = { fg = p.syn_keyword },
    ["@keyword.function"] = { fg = p.syn_keyword },
    ["@keyword.operator"] = { fg = p.syn_keyword },
    ["@keyword.import"] = { fg = p.syn_keyword },
    ["@keyword.repeat"] = { fg = p.syn_keyword },
    ["@keyword.return"] = { fg = p.syn_keyword },
    ["@keyword.debug"] = { fg = p.magenta },
    ["@keyword.exception"] = { fg = p.syn_keyword },
    ["@keyword.conditional"] = { fg = p.syn_keyword },
    ["@keyword.conditional.ternary"] = { fg = p.syn_operator },
    ["@keyword.directive"] = { fg = p.magenta },
    ["@keyword.directive.define"] = { fg = p.magenta },
    ["@keyword.export"] = { fg = p.syn_keyword },

    -- Punctuation
    ["@punctuation.delimiter"] = { fg = p.syn_punctuation },
    ["@punctuation.bracket"] = { fg = p.syn_punctuation },
    ["@punctuation.special"] = { fg = p.cyan },

    -- Comments
    ["@comment"] = { fg = p.syn_comment, italic = true },
    ["@comment.documentation"] = { fg = p.syn_comment, italic = true },
    ["@comment.error"] = { fg = p.error, bold = true },
    ["@comment.warning"] = { fg = p.warning, bold = true },
    ["@comment.hint"] = { fg = p.hint },
    ["@comment.todo"] = { fg = p.accent, bold = true },
    ["@comment.note"] = { fg = p.info },

    -- Markup
    ["@markup"] = { fg = p.fg },
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { fg = p.accent, bold = true },
    ["@markup.heading.1.markdown"] = { fg = p.accent, bold = true },
    ["@markup.heading.2.markdown"] = { fg = p.yellow, bold = true },
    ["@markup.heading.3.markdown"] = { fg = p.cyan, bold = true },
    ["@markup.heading.4.markdown"] = { fg = p.blue, bold = true },
    ["@markup.heading.5.markdown"] = { fg = p.bright_green, bold = true },
    ["@markup.heading.6.markdown"] = { fg = p.fg_muted, bold = true },
    ["@markup.math"] = { fg = p.syn_number },
    ["@markup.quote"] = { fg = p.fg_muted, italic = true },
    ["@markup.environment"] = { fg = p.magenta },
    ["@markup.environment.name"] = { fg = p.syn_type },
    ["@markup.link"] = { fg = p.accent_text },
    ["@markup.link.label"] = { fg = p.cyan },
    ["@markup.link.url"] = { fg = p.accent_text, underline = true },
    ["@markup.raw"] = { fg = p.accent },
    ["@markup.list"] = { fg = p.accent },
    ["@markup.list.checked"] = { fg = p.accent },
    ["@markup.list.unchecked"] = { fg = p.bright_black },

    -- Diff
    ["@diff.plus"] = { fg = p.green },
    ["@diff.minus"] = { fg = p.red },
    ["@diff.delta"] = { fg = p.yellow },

    -- Tags (HTML/XML)
    ["@tag"] = { fg = p.syn_tag },
    ["@tag.builtin"] = { fg = p.syn_tag },
    ["@tag.attribute"] = { fg = p.syn_property },
    ["@tag.delimiter"] = { fg = p.syn_punctuation },
  }
end

return M
