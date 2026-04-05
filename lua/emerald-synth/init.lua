local M = {}

M.config = {
  transparent = false,
}

function M.setup(opts)
  M.config = vim.tbl_extend("force", M.config, opts or {})
end

function M.load()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.termguicolors = true
  vim.g.colors_name = "emerald-synth"

  local p = require("emerald-synth.palette").colors
  local groups = {}

  groups = vim.tbl_extend("force", groups, require("emerald-synth.groups.editor").get(p))
  groups = vim.tbl_extend("force", groups, require("emerald-synth.groups.syntax").get(p))
  groups = vim.tbl_extend("force", groups, require("emerald-synth.groups.treesitter").get(p))
  groups = vim.tbl_extend("force", groups, require("emerald-synth.groups.lsp").get(p))
  groups = vim.tbl_extend("force", groups, require("emerald-synth.integrations.telescope").get(p))
  groups = vim.tbl_extend("force", groups, require("emerald-synth.integrations.gitsigns").get(p))

  if M.config.transparent then
    local none = { bg = "NONE" }
    for _, name in ipairs({
      "Normal", "NormalNC", "NormalFloat", "NormalSB",
      "SignColumn", "FoldColumn", "Folded",
      "TabLineFill",
      "WinBar", "WinBarNC",
      "TelescopeNormal", "TelescopePreviewNormal",
    }) do
      if groups[name] then
        groups[name] = vim.tbl_extend("force", groups[name], none)
      end
    end
  end

  for group, setting in pairs(groups) do
    vim.api.nvim_set_hl(0, group, setting)
  end

  -- Terminal colors
  vim.g.terminal_color_0 = p.black
  vim.g.terminal_color_1 = p.red
  vim.g.terminal_color_2 = p.green
  vim.g.terminal_color_3 = p.yellow
  vim.g.terminal_color_4 = p.blue
  vim.g.terminal_color_5 = p.magenta
  vim.g.terminal_color_6 = p.cyan
  vim.g.terminal_color_7 = p.white
  vim.g.terminal_color_8 = p.bright_black
  vim.g.terminal_color_9 = p.bright_red
  vim.g.terminal_color_10 = p.bright_green
  vim.g.terminal_color_11 = p.bright_yellow
  vim.g.terminal_color_12 = p.bright_blue
  vim.g.terminal_color_13 = p.bright_magenta
  vim.g.terminal_color_14 = p.bright_cyan
  vim.g.terminal_color_15 = p.bright_white
end

return M
