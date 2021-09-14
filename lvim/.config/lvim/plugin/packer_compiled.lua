-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/dezmondfinney/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/dezmondfinney/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/dezmondfinney/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/dezmondfinney/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/dezmondfinney/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Navigator.nvim"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/Navigator.nvim"
  },
  ["astronauta.nvim"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/astronauta.nvim"
  },
  ["autohotkey-ahk"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/autohotkey-ahk"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\n‚\1\0\0\3\0\6\0\0156\0\0\0'\2\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\5€6\0\2\0009\0\3\0009\0\4\0009\0\5\0B\0\1\1K\0\1\0\19on_config_done\15bufferline\fbuiltin\tlvim\20core.bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/opt/barbar.nvim"
  },
  colorschemes = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/colorschemes"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\nš\1\0\0\5\0\a\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\2\0\0'\4\5\0B\2\2\0A\0\0\1K\0\1\0\19on_config_done\14dashboard\fbuiltin\tlvim\nsetup\19core.dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/opt/dashboard-nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/opt/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\nŽ\1\0\0\5\0\6\0\0186\0\0\0'\2\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\b€6\0\2\0009\0\3\0009\0\4\0009\0\5\0006\2\0\0'\4\4\0B\2\2\0A\0\0\1K\0\1\0\19on_config_done\15galaxyline\fbuiltin\tlvim\20core.galaxyline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/opt/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n˜\1\0\0\5\0\a\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\2\0\0'\4\5\0B\2\2\0A\0\0\1K\0\1\0\19on_config_done\rgitsigns\fbuiltin\tlvim\nsetup\18core.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/goyo.vim"
  },
  ["lightspeed.nvim"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/lightspeed.nvim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n›\1\0\0\5\0\a\0\0186\0\0\0'\2\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\b€6\0\2\0009\0\3\0009\0\4\0009\0\5\0006\2\0\0'\4\6\0B\2\2\0A\0\0\1K\0\1\0\19nvim-autopairs\19on_config_done\14autopairs\fbuiltin\tlvim\19core.autopairs\frequire\0" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n¤\1\0\0\5\0\b\0\0226\0\0\0006\2\1\0'\3\2\0B\0\3\3\14\0\0\0X\2\1€K\0\1\0009\2\3\1B\2\1\0016\2\4\0009\2\5\0029\2\6\0029\2\a\2\15\0\2\0X\3\6€6\2\4\0009\2\5\0029\2\6\0029\2\a\2\18\4\1\0B\2\2\1K\0\1\0\19on_config_done\fcomment\fbuiltin\tlvim\nsetup\17nvim_comment\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-compe"] = {
    after = { "nvim-autopairs" },
    after_files = { "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "\27LJ\2\n’\1\0\0\5\0\a\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\2\0\0'\4\5\0B\2\2\0A\0\0\1K\0\1\0\19on_config_done\ncompe\fbuiltin\tlvim\nsetup\15core.compe\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\2\n„\1\0\0\4\0\6\0\0186\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0016\1\3\0009\1\4\0019\1\1\0019\1\5\1\15\0\1\0X\2\6€6\1\3\0009\1\4\0019\1\1\0019\1\5\1\18\3\0\0B\1\2\1K\0\1\0\19on_config_done\fbuiltin\tlvim\nsetup\15lspinstall\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\2\n£\1\0\0\5\0\b\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\2\0\0'\4\a\0B\2\2\0A\0\0\1K\0\1\0\15toggleterm\19on_config_done\rterminal\fbuiltin\tlvim\nsetup\18core.terminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/opt/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n©\1\0\0\5\0\b\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\2\0\0'\4\a\0B\2\2\0A\0\0\1K\0\1\0\21nvim-tree.config\19on_config_done\rnvimtree\fbuiltin\tlvim\nsetup\18core.nvimtree\frequire\0" },
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n´\1\0\0\5\0\b\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\2\0\0'\4\a\0B\2\2\0A\0\0\1K\0\1\0\28nvim-treesitter.configs\19on_config_done\15treesitter\fbuiltin\tlvim\nsetup\20core.treesitter\frequire\0" },
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/packer.nvim"
  },
  ["persistence.nvim"] = {
    config = { "\27LJ\2\nÏ\1\0\0\b\0\r\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\t\0006\3\3\0009\3\4\0039\3\5\0036\5\3\0009\5\4\0059\5\6\5'\a\a\0B\5\2\2'\6\b\0&\5\6\5B\3\2\2=\3\n\0025\3\v\0=\3\f\2B\0\2\1K\0\1\0\foptions\1\5\0\0\fbuffers\vcurdir\rtabpages\fwinsize\bdir\1\0\0\14/session/\vconfig\fstdpath\vexpand\afn\bvim\nsetup\16persistence\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/opt/persistence.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nš\1\0\0\5\0\a\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\2\0\0'\4\5\0B\2\2\0A\0\0\1K\0\1\0\19on_config_done\14telescope\fbuiltin\tlvim\nsetup\19core.telescope\frequire\0" },
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-fish"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/vim-fish"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-rooter"] = {
    config = { "\27LJ\2\n„\1\0\0\2\0\a\0\0166\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\5€6\0\3\0009\0\4\0009\0\5\0009\0\6\0B\0\1\1K\0\1\0\19on_config_done\vrooter\fbuiltin\tlvim\24rooter_silent_chdir\6g\bvim\0" },
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/opt/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n¤\1\0\0\5\0\b\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\2\0\0'\4\a\0B\2\2\0A\0\0\1K\0\1\0\14which-key\19on_config_done\14which_key\fbuiltin\tlvim\nsetup\19core.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/dezmondfinney/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^persistence"] = "persistence.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nš\1\0\0\5\0\a\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\2\0\0'\4\5\0B\2\2\0A\0\0\1K\0\1\0\19on_config_done\14telescope\fbuiltin\tlvim\nsetup\19core.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n©\1\0\0\5\0\b\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\2\0\0'\4\a\0B\2\2\0A\0\0\1K\0\1\0\21nvim-tree.config\19on_config_done\rnvimtree\fbuiltin\tlvim\nsetup\18core.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n´\1\0\0\5\0\b\0\0206\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\2\0\0'\4\a\0B\2\2\0A\0\0\1K\0\1\0\28nvim-treesitter.configs\19on_config_done\15treesitter\fbuiltin\tlvim\nsetup\20core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-rooter
time([[Config for vim-rooter]], true)
try_loadstring("\27LJ\2\n„\1\0\0\2\0\a\0\0166\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\5€6\0\3\0009\0\4\0009\0\5\0009\0\6\0B\0\1\1K\0\1\0\19on_config_done\vrooter\fbuiltin\tlvim\24rooter_silent_chdir\6g\bvim\0", "config", "vim-rooter")
time([[Config for vim-rooter]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'persistence.nvim', 'nvim-lspinstall'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-compe'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'barbar.nvim', 'which-key.nvim', 'galaxyline.nvim', 'nvim-toggleterm.lua', 'dashboard-nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'vim-vsnip', 'friendly-snippets'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'gitsigns.nvim', 'nvim-comment'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
