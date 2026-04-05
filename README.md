# Emerald Synth for Neovim

A synthwave-inspired dark colorscheme for [Neovim](https://neovim.io) with deep purple backgrounds and emerald-green foreground text.

This repository is a distribution copy of the Neovim colorscheme from [malleroid/emerald-synth](https://github.com/malleroid/emerald-synth), published as a standalone Neovim plugin.

## Preview

| Role | Color | Hex |
|------|-------|-----|
| Background | ![#0d0221](https://placehold.co/16x16/0d0221/0d0221) | `#0d0221` |
| Foreground | ![#00ffcc](https://placehold.co/16x16/00ffcc/00ffcc) | `#00ffcc` |
| Accent | ![#ff79c6](https://placehold.co/16x16/ff79c6/ff79c6) | `#ff79c6` |
| Keyword | ![#8b9cf7](https://placehold.co/16x16/8b9cf7/8b9cf7) | `#8b9cf7` |
| Function | ![#4dd0e1](https://placehold.co/16x16/4dd0e1/4dd0e1) | `#4dd0e1` |
| String | ![#ff79c6](https://placehold.co/16x16/ff79c6/ff79c6) | `#ff79c6` |
| Type | ![#ffcc66](https://placehold.co/16x16/ffcc66/ffcc66) | `#ffcc66` |
| Error | ![#ff2a6d](https://placehold.co/16x16/ff2a6d/ff2a6d) | `#ff2a6d` |

## Features

- Editor UI highlights (cursor, selection, search, popup menu, floating windows, etc.)
- Vim syntax and TreeSitter highlight groups
- LSP diagnostics and semantic tokens
- Plugin integrations: Telescope, Gitsigns
- Terminal ANSI colors (normal + bright)

## Configuration

```lua
require("emerald-synth").setup({
  transparent = false,  -- set to true for transparent background
})
```

## Install

### lazy.nvim (recommended)

```lua
{
  "malleroid/emerald-synth.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("emerald-synth").setup({})
    vim.cmd.colorscheme("emerald-synth")
  end,
}
```

### mini.deps

```lua
MiniDeps.add({ source = "malleroid/emerald-synth.nvim" })
require("emerald-synth").setup({})
vim.cmd.colorscheme("emerald-synth")
```

### Manual

Clone this repository and add it to your runtime path:

```sh
git clone https://github.com/malleroid/emerald-synth.nvim.git ~/.local/share/nvim/site/pack/themes/start/emerald-synth.nvim
```

Then add to your config:

```lua
vim.cmd.colorscheme("emerald-synth")
```

## Issues & Contributions

Bug reports, feature requests, and contributions are managed in the parent repository:

**[malleroid/emerald-synth](https://github.com/malleroid/emerald-synth/issues)**

Please open issues and pull requests there.

## License

[MIT](LICENSE)
