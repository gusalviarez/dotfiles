vim.g.mapleader = " "
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
keymap("n", '<Up>', "<cmd>echoerr '  no arrows for you  '<CR>", opts) --
keymap('n', '<Down>',  "<cmd>echoerr '  no arrows for you  '<CR>", opts)
keymap('n', '<Left>',  "<cmd>echoerr '  no arrows for you  '<CR>", opts)
keymap('n', '<Right>',  "<cmd>echoerr '  no arrows for you  '<CR>", opts)

keymap("v", '<Up>', "<cmd>echoerr '  no arrows for you  '<CR>", opts) --
keymap('v', '<Down>',  "<cmd>echoerr '  no arrows for you  '<CR>", opts)
keymap('v', '<Left>',  "<cmd>echoerr '  no arrows for you  '<CR>", opts)
keymap('v', '<Right>',  "<cmd>echoerr '  no arrows for you  '<CR>", opts)

keymap( "n" , "t", "<C-u>zt", opts)
keymap( "n" , "r", "<C-d>zt", opts)

keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

keymap("n", "K", ":m -2<CR>", opts)
keymap("n", "J", ":m +1<CR>", opts)

keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

keymap("i", "jj", "<esc>", opts)

vim.api.nvim_set_keymap(
  'n', '<Leader>le', ':lua vim.diagnostic.open_float()<CR>',
  { noremap = true, silent = true, desc = "Show diagnostics on current line in floating window" }
)
