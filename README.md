# nvim.config

> [!NOTE]
> This is my personal `neovim` configuration. If you'd like to use it, feel free to do so.

![image](https://github.com/user-attachments/assets/ceb5597c-a011-476f-ae1c-742af7467944)

## Prerequisites

- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [devicons](http://vorillaz.github.io/devicons/#/main)
- [nerd-font](https://www.nerdfonts.com/font-downloads) (pick _any_, I use `Hack Nerd Font`)

## Installation

1. Clone the repository:

```bash
git clone https://github.com/joshxfi/nvim.config.git ~/.config/nvim
```

## Structure

The configuration is structured as follows:

```
.
├── init.lua
├── lua
│   └── joshxfi
│       ├── config
│       │   ├── lazy.lua
│       │   ├── remap.lua
│       │   └── set.lua
│       ├── init.lua
│       └── plugins
│           ├── barbar.lua
│           ├── colorscheme.lua
│           ├── completion.lua
│           ├── formatting.lua
│           ├── fugitive.lua
│           ├── init.lua
│           ├── lsp.lua
│           ├── lualine.lua
│           ├── nvim-tree.lua
│           ├── telescope.lua
│           ├── treesitter.lua
│           └── trouble.lua
└── README.md
```

- `init.lua`: The entry point of the configuration.
- `lua/joshxfi/init.lua`: Initializes the configuration.
- `lua/joshxfi/config/`: Contains the core configuration files.
  - `lazy.lua`: Plugin management with `lazy.nvim`.
  - `remap.lua`: Custom key mappings.
  - `set.lua`: Neovim options.
- `lua/joshxfi/plugins/`: Contains the plugin configurations.

## Plugins

## Key-bindings

The leader key is set to `<Space>`.

### General

| Key-binding | Description |
| :--- | :--- |
| `C-b` | Open the file explorer |
| `jj` | Escape |
| `<leader>y` | Copy to the system clipboard |
| `<leader>Y` | Copy the current line to the system clipboard |
| `<leader>s` | Replace the word under the cursor |
| `<leader>e` | Open the diagnostic float |
| `<leader>q` | Open the quickfix list |

### Telescope

| Key-binding | Description |
| :--- | :--- |
| `<leader>ff` | Find files |
| `<leader>gf` | Find git files |
| `<leader>ps` | Grep string |
