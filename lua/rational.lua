-- Neovim API aliases {{{
local fn = vim.fn
local map = vim.api.nvim_set_keymap
local opt = vim.opt
local opts = { noremap = true, silent = true }
-- }}}

-- General {{{
opt.mouse = 'a'                                            -- Enable mouse support
opt.swapfile = false                                       -- No swapfile
opt.scrolloff = 5                                          -- Start scrolling 5 lines away from margin
opt.sidescrolloff = 15                                     -- Start scrolling 15 lines away from side margin
--- }}}

--- Whitespace {{{
opt.linebreak = true                                       -- Wrap lines at word boundaries
opt.expandtab = true                                       -- Indent with spaces
opt.list = true                                            -- Show invisible characters
opt.listchars = { eol = '↲', tab = '▸ ', trail = '·' }
opt.softtabstop = 2                                        -- Number of spaces per <tab> when inserting
opt.shiftwidth = 2                                         -- Number of spaces per <tab> when indenting
opt.tabstop = 4                                            -- Number of spaces <tab> counts for
--- }}}

-- UI {{{
opt.cursorline = true                                      -- Show cursor line
opt.laststatus = 2                                         -- Show status line
opt.number = true                                          -- Show line numbers
--}}}

-- Search {{{
opt.incsearch = true                                       -- Enable incremental search
opt.ignorecase = true                                      -- Ignore case when searching
opt.smartcase = true                                       -- unless there is a capital letter in the query
-- }}}

--- LSP {{{
-- Define diagnostic signs (requires nerd font)
if vim.g.rational_diagnostic_signs then
  fn.sign_define('DiagnosticSignError', { text = '󱈸', texthl = 'DiagnosticSignError' })
  fn.sign_define('DiagnosticSignHint',  { text = '󰌵', texthl = 'DiagnosticSignHint' })
  fn.sign_define('DiagnosticSignInfo',  { text = '󰐾', texthl = 'DiagnosticSignInfo' })
  fn.sign_define('DiagnosticSignWarn',  { text = '󰈻', texthl = 'DiagnosticSignWarn' })
end
--- }}}

--- Bindings {{{
map('n', '/', ':set hlsearch<cr>/', opts)                  -- Enable hlserch on search start
map('n', '<leader><cr>', ':noh<cr>', opts)                 -- Disable hl

map('i', '<S-Tab>', '<C-d>', opts)                         -- Tab backwards with Shift+Tab

map('n', 'k', 'gk', { silent = true })                     -- Move more sensibly when line wrapping enabled
map('n', 'j', 'gj', { silent = true })                     -- Move more sensibly when line wrapping enabled

map('n', 'va', 'ggVG', opts)                               -- Select all text
--- }}}
