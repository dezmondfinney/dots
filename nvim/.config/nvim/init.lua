require('plugins')
require('pears').setup()
require('lualine').setup()

vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.mouse = "a"

vim.g.colorscheme = "dracula"
vim.g.mapleader = " "

-- Keymaps
local keymap = vim.api.nvim_set_keymap

keymap('n', '<Leader>q', ':qa<CR>', { noremap = true, silent = true })
keymap('n', '<Leader>f', 'Files', { noremap = true, silent = true })
keymap('n', '<Leader>ff', ':Telescope file_browser<CR>', { noremap = true, silent = true })
keymap('n', '<Leader>fr', ':Telescope oldfiles<CR>', { noremap = true, silent = true })
keymap('n', '<Leader>w', ':w<CR>', {})

keymap('n', '<f12>', ':FloatermNew --autoclose=2<CR>', { noremap = true, silent = true })

keymap('i', 'jk', '<esc>', { noremap = true, silent = true })

vim.cmd[[colorscheme dracula]]

-- keymap('n', '<Leader>z', function () 
--   require("zen-mode").toggle({
--     window = {
--       width = .85 -- width will be 85% of the editor width
--     }
--   })
-- end, {})


