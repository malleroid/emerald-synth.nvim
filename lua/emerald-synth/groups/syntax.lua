local M = {}

function M.get(p)
  return {
    -- Comments
    Comment = { fg = p.syn_comment, italic = true },

    -- Constants
    Constant = { fg = p.syn_constant },
    String = { fg = p.syn_string },
    Character = { fg = p.syn_string },
    Number = { fg = p.syn_number },
    Boolean = { fg = p.syn_boolean },
    Float = { fg = p.syn_number },

    -- Identifiers
    Identifier = { fg = p.fg },
    Function = { fg = p.syn_function },

    -- Statements
    Statement = { fg = p.syn_keyword },
    Conditional = { fg = p.syn_keyword },
    Repeat = { fg = p.syn_keyword },
    Label = { fg = p.cyan },
    Operator = { fg = p.syn_operator },
    Keyword = { fg = p.syn_keyword },
    Exception = { fg = p.syn_keyword },

    -- Preprocessor
    PreProc = { fg = p.magenta },
    Include = { fg = p.syn_keyword },
    Define = { fg = p.magenta },
    Macro = { fg = p.magenta },
    PreCondit = { fg = p.magenta },

    -- Types
    Type = { fg = p.syn_type },
    StorageClass = { fg = p.syn_keyword },
    Structure = { fg = p.syn_type },
    Typedef = { fg = p.syn_type },

    -- Special
    Special = { fg = p.cyan },
    SpecialChar = { fg = p.magenta },
    Tag = { fg = p.syn_tag },
    Delimiter = { fg = p.syn_punctuation },
    SpecialComment = { fg = p.syn_comment, bold = true },
    Debug = { fg = p.magenta },

    -- Other
    Underlined = { fg = p.accent_text, underline = true },
    Error = { fg = p.error },
    Todo = { fg = p.accent, bold = true },
  }
end

return M
