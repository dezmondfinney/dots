-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "darkplus"

-- keymappings
lvim.leader = "space"

-- overwrite the key-mappings provided by LunarVim for any mode, or leave it empty to keep them
lvim.keys.normal_mode = {
  -- Page down/up
  {'[d', '<PageUp>'},
  {']d', '<PageDown>'},

  -- Navigate buffers
  {'<Tab>', ':bnext<CR>'},
  {'<S-Tab>', ':bprevious<CR>'},
}

-- if you just want to augment the existing ones then use the utility function
-- require("utils").add_keymap_insert_mode({ silent = true }, {
-- { "<C-s>", ":w<cr>" },
-- { "<C-c>", "<ESC>" },
-- })
-- you can also use the native vim way directly
-- vim.api.nvim_set_keymap("i", "<C-Space>", "compe#complete()", { noremap = true, silent = true, expr = true })

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- Additional Plugins
lvim.plugins = {
  {'lunarvim/colorschemes'},
  {'kevinhwang91/rnvimr'},
  {'dag/vim-fish'},
  {'ggandor/lightspeed.nvim'},
  {'tpope/vim-surround'},
  {'voldikss/vim-floaterm'},
  {'junegunn/goyo.vim'},
  {
    "folke/persistence.nvim",
    event = "VimEnter",
    module = "persistence",
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      }
    end,
  },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }

-- Additional Leader bindings for WhichKey
lvim.builtin.which_key.mappings["a"] = {
  name = "+Apps",
  r = {"<cmd> FloatermNew ranger<CR>", "Ranger"},
  g = {"<cmd> FloatermNew lazygit<CR>", "Git"}
}

lvim.builtin.which_key.mappings["Q"] = {
  name = "+Quit",
  Q = { "<cmd> qa<CR>", "Quit"},
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session"},
  s = { "<cmd>lua require('persistence').load()<cr>", "Restore for current dir"},
  d = { "<cmd>lua require('persistence').stop()<cr>", "Quit without savin session"},
}

vim.cmd([[
  let g:floaterm_keymap_toggle = "<C-space>"
  let g:floaterm_height = 0.85
  let g:goyo_width = "75%"
]])
