# rational.nvim

My collection of sensible Neovim default settings.

All options are organized into sections with comments for clarity.

## Features

### Default Settings

- Mouse support enabled (`mouse = 'a'`)
- Swap files disabled
- Scroll margins: 5 lines vertical, 15 lines horizontal
- Split windows below and to the right
- Completion menu configuration (always show, no auto-select)
- Line wrapping at word boundaries
- Spaces for indentation (2 spaces)
- Visible whitespace characters (tabs, trailing spaces, line endings)
- Cursor line highlighting
- Line numbers displayed
- Status line always visible
- Smart case search (case-insensitive unless uppercase letters are used)

### Key Bindings

- `/` - Enable search highlighting when searching
- `<leader><cr>` - Clear search highlighting
- `<S-Tab>` (Insert mode) - Tab backwards
- `j`/`k` - Move by display lines (works with wrapped text)
- `va` - Select all text

## Configuration

You can customize the plugin behavior by setting global variables in your `init.lua`:

- `vim.g.rational_diagnostic_signs` (boolean, default: `true`) - Enable custom LSP diagnostic signs (requires nerd font icons)

## Installation

Using vim-plug:

```vim
Plug 'lcmen/rational.nvim'
```
