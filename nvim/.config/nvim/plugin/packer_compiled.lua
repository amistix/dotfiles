-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/amistix/.cache/nvim/packer_hererocks/2.1.1767980792/share/lua/5.1/?.lua;/home/amistix/.cache/nvim/packer_hererocks/2.1.1767980792/share/lua/5.1/?/init.lua;/home/amistix/.cache/nvim/packer_hererocks/2.1.1767980792/lib/luarocks/rocks-5.1/?.lua;/home/amistix/.cache/nvim/packer_hererocks/2.1.1767980792/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/amistix/.cache/nvim/packer_hererocks/2.1.1767980792/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/amistix/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  catppuccin = {
    loaded = true,
    path = "/home/amistix/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/amistix/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n�\a\0\0\1\0\1\0\0025\0\0\0L\0\2\0\1\r\0\0\5\5\5�\1 ██████╗ ███████╗███╗   ██╗███████╗███████╗██╗███████╗�\1██╔════╝ ██╔════╝████╗  ██║██╔════╝██╔════╝██║██╔════╝�\1██║  ███╗█████╗  ██╔██╗ ██║█████╗  ███████╗██║███████╗�\1██║   ██║██╔══╝  ██║╚██╗██║██╔══╝  ╚════██║██║╚════██║�\1╚██████╔╝███████╗██║ ╚████║███████╗███████║██║███████║�\1 ╚═════╝ ╚══════╝╚═╝  ╚═══╝╚══════╝╚══════╝╚═╝╚══════╝\5\5\5�\5\1\0\a\0\r\0\0233\0\0\0006\1\1\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0005\4\5\0\18\5\0\0B\5\1\2=\5\6\0044\5\5\0005\6\a\0>\6\1\0055\6\b\0>\6\2\0055\6\t\0>\6\3\0055\6\n\0>\6\4\5=\5\v\4=\4\f\3B\1\2\1K\0\1\0\vconfig\vcenter\1\0\b\fdesc_hl\vString\bkey\6b\vkeymap\fSPC g b\ficon_hl\nTitle\vaction\28:Telescope git_branches\ticon\t \vkey_hl\vNumber\tdesc\16Git Braches\1\0\b\fdesc_hl\vString\bkey\6w\vkeymap\fSPC f w\ficon_hl\nTitle\vaction\25:Telescope live_grep\ticon\t \vkey_hl\vNumber\tdesc\14Find text\1\0\b\fdesc_hl\vString\bkey\6r\vkeymap\fSPC f r\ficon_hl\nTitle\vaction\24:Telescope oldfiles\ticon\n󰱾 \vkey_hl\vNumber\tdesc\18Open recently\1\0\b\fdesc_hl\vString\bkey\6f\vkeymap\fSPC f f\ficon_hl\nTitle\vaction\26:Telescope find_files\ticon\n󰈞 \vkey_hl\vNumber\tdesc\15Find files\vheader\1\0\2\vheader\0\vcenter\0\1\0\2\ntheme\tdoom\vconfig\0\nsetup\14dashboard\frequire\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/amistix/.local/share/nvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/nvimdev/dashboard-nvim"
  },
  ["dropbar.nvim"] = {
    config = { "\27LJ\2\n�\2\0\0\a\0\15\0\0286\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0009\5\a\0005\6\b\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\t\0009\5\n\0005\6\v\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\f\0009\5\r\0005\6\14\0B\1\5\1K\0\1\0\1\0\1\tdesc\24Select next context\24select_next_context\a];\1\0\1\tdesc#Go to start of current context\23goto_context_start\a[;\1\0\1\tdesc\27Pick symbols in winbar\tpick\14<Leader>;\6n\bset\vkeymap\bvim\16dropbar.api\frequire\0" },
    loaded = true,
    path = "/home/amistix/.local/share/nvim/site/pack/packer/start/dropbar.nvim",
    url = "https://github.com/Bekaboo/dropbar.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/amistix/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/amistix/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/amistix/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/amistix/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/amistix/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/amistix/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: dropbar.nvim
time([[Config for dropbar.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\a\0\15\0\0286\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\6\0009\5\a\0005\6\b\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\t\0009\5\n\0005\6\v\0B\1\5\0016\1\2\0009\1\3\0019\1\4\1'\3\5\0'\4\f\0009\5\r\0005\6\14\0B\1\5\1K\0\1\0\1\0\1\tdesc\24Select next context\24select_next_context\a];\1\0\1\tdesc#Go to start of current context\23goto_context_start\a[;\1\0\1\tdesc\27Pick symbols in winbar\tpick\14<Leader>;\6n\bset\vkeymap\bvim\16dropbar.api\frequire\0", "config", "dropbar.nvim")
time([[Config for dropbar.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'dashboard-nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
