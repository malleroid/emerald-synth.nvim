local M = {}

function M.get(p)
  return {
    -- Background & Text
    Normal = { fg = p.fg, bg = p.bg },
    NormalNC = { fg = p.fg, bg = p.bg },
    NormalFloat = { fg = p.fg, bg = p.bg_medium },
    NormalSB = { fg = p.fg, bg = p.bg_sidebar },

    -- Cursor
    Cursor = { fg = p.cursor_text, bg = p.cursor },
    lCursor = { link = "Cursor" },
    CursorIM = { link = "Cursor" },
    CursorLine = { bg = "#131f2b" },  -- selection_bg 50% on bg (teal tint)
    CursorColumn = { link = "CursorLine" },
    CursorLineNr = { fg = p.accent, bold = true },
    TermCursor = { fg = p.cursor_text, bg = p.cursor },
    TermCursorNC = { fg = p.bg, bg = p.bright_black },

    -- Selection & Search
    Visual = { bg = p.selection_bg },
    VisualNOS = { link = "Visual" },
    Search = { fg = p.search_fg, bg = p.search_bg },
    IncSearch = { fg = p.search_selected_fg, bg = p.search_selected_bg },
    CurSearch = { fg = p.search_selected_fg, bg = p.search_selected_bg },
    Substitute = { fg = p.search_selected_fg, bg = p.search_selected_bg },

    -- Line numbers & Sign column
    LineNr = { fg = p.bright_black },
    SignColumn = { fg = p.bright_black, bg = p.bg },
    FoldColumn = { fg = p.bright_black, bg = p.bg },
    ColorColumn = { bg = p.bg_medium },

    -- Popup menu (completion)
    Pmenu = { fg = p.fg, bg = p.bg_medium },
    PmenuSel = { fg = p.fg, bg = p.selection_bg },
    PmenuSbar = { bg = p.bg_sidebar },
    PmenuThumb = { bg = p.accent_border },
    PmenuMatch = { fg = p.accent, bg = p.bg_medium },
    PmenuMatchSel = { fg = p.accent, bg = p.selection_bg },

    -- Floating windows
    FloatBorder = { fg = p.accent_border, bg = p.bg_medium },
    FloatTitle = { fg = p.accent, bg = p.bg_medium, bold = true },

    -- Status line
    StatusLine = { fg = p.fg, bg = p.bg_raised },
    StatusLineNC = { fg = p.bright_black, bg = p.bg_medium },

    -- Tab line
    TabLine = { fg = p.bright_black, bg = p.bg_raised },
    TabLineFill = { bg = p.bg_raised },
    TabLineSel = { fg = p.accent_fg, bg = p.accent_border, bold = true },

    -- Window
    WinSeparator = { fg = p.split_divider },
    WinBar = { fg = p.fg, bg = p.bg, bold = true },
    WinBarNC = { fg = p.bright_black, bg = p.bg },
    VertSplit = { link = "WinSeparator" },

    -- Folding
    Folded = { fg = p.bright_black, bg = p.bg_medium },
    Conceal = { fg = p.bright_black },

    -- Messages
    ErrorMsg = { fg = p.error, bold = true },
    WarningMsg = { fg = p.warning, bold = true },
    ModeMsg = { fg = p.accent, bold = true },
    MoreMsg = { fg = p.accent },
    MsgArea = { fg = p.fg },
    MsgSeparator = { fg = p.split_divider },
    Question = { fg = p.accent },

    -- Misc UI
    Directory = { fg = p.cyan },
    EndOfBuffer = { fg = p.bg_medium },
    NonText = { fg = p.bg_sidebar },
    SpecialKey = { fg = p.bg_sidebar },
    Whitespace = { fg = p.bg_sidebar },
    WildMenu = { fg = p.accent_fg, bg = p.accent },
    MatchParen = { fg = p.accent, bg = p.bg_sidebar, bold = true },
    Title = { fg = p.accent, bold = true },
    QuickFixLine = { bg = p.selection_bg },

    -- Spell
    SpellBad = { sp = p.error, undercurl = true },
    SpellCap = { sp = p.warning, undercurl = true },
    SpellLocal = { sp = p.info, undercurl = true },
    SpellRare = { sp = p.hint, undercurl = true },

    -- Diff
    DiffAdd = { bg = "#00ffcc15" },
    DiffChange = { bg = "#ffcc6615" },
    DiffDelete = { bg = "#ff2a6d15" },
    DiffText = { bg = "#ffcc6630" },
    Added = { fg = p.green },
    Changed = { fg = p.yellow },
    Removed = { fg = p.red },
  }
end

return M
