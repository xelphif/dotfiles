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
  ale = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/ale"
  },
  ["asyncrun.vim"] = {
    commands = { "AsyncRun" },
    loaded = false,
    needs_bufread = false,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/asyncrun.vim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["better-escape.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/better-escape.vim"
  },
  edge = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/edge"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/gruvbox-material"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["iron.nvim"] = {
    config = { "require('config.iron')" },
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/iron.nvim"
  },
  LeaderF = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/LeaderF"
  },
  ["neodark.vim"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/neodark.vim"
  },
  neoformat = {
    commands = { "Neoformat" },
    loaded = false,
    needs_bufread = false,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/neoformat"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/nord.nvim"
  },
  ["nvim-compe"] = {
    after_files = { "/home/xelphif/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "require('config.compe')" },
    loaded = false,
    needs_bufread = false,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-gdb"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/nvim-gdb"
  },
  ["nvim-lspconfig"] = {
    config = { "require('config.lsp')" },
    loaded = false,
    needs_bufread = false,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["registers.nvim"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/registers.nvim"
  },
  sonokai = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/sonokai"
  },
  tabular = {
    after_files = { "/home/xelphif/.local/share/nvim/site/pack/packer/opt/tabular/after/plugin/TabularMaps.vim" },
    commands = { "Tabularize" },
    loaded = false,
    needs_bufread = false,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/tabular"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ultisnips = {
    after_files = { "/home/xelphif/.local/share/nvim/site/pack/packer/opt/ultisnips/after/plugin/UltiSnips_after.vim" },
    loaded = false,
    needs_bufread = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/ultisnips"
  },
  ["unicode.vim"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/unicode.vim"
  },
  ["vim-airline"] = {
    load_after = {
      ["vim-airline-themes"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-airline"
  },
  ["vim-airline-themes"] = {
    after = { "vim-airline" },
    loaded = false,
    needs_bufread = false,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-airline-themes"
  },
  ["vim-anzu"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-anzu"
  },
  ["vim-asterisk"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-asterisk"
  },
  ["vim-auto-save"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-auto-save"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-cool"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-cool"
  },
  ["vim-deus"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-deus"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gruvbox8"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-gruvbox8"
  },
  ["vim-gutentags"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-gutentags"
  },
  ["vim-highlighturl"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-highlighturl"
  },
  ["vim-indent-object"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-indent-object"
  },
  ["vim-json"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-json"
  },
  ["vim-markdown"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-markdown"
  },
  ["vim-markdownfootnotes"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-markdownfootnotes"
  },
  ["vim-mundo"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-mundo"
  },
  ["vim-obsession"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-obsession"
  },
  ["vim-oscyank"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-oscyank"
  },
  ["vim-python-pep8-indent"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-python-pep8-indent"
  },
  ["vim-pythonsense"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-pythonsense"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-sandwich"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-sandwich"
  },
  ["vim-scriptease"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-scriptease"
  },
  ["vim-searchlight"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-searchlight"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-signify"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-sneak"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-snippets"
  },
  ["vim-solarized8"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-solarized8"
  },
  ["vim-startify"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-startify"
  },
  vimSum = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vimSum"
  },
  ["vim-swap"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-swap"
  },
  ["vim-titlecase"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vim-titlecase"
  },
  ["vim-toml"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-toml"
  },
  ["vista.vim"] = {
    loaded = true,
    path = "/home/xelphif/.local/share/nvim/site/pack/packer/start/vista.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: iron.nvim
time([[Config for iron.nvim]], true)
require('config.iron')
time([[Config for iron.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
vim.cmd [[command! -nargs=* -range -bang -complete=file AsyncRun lua require("packer.load")({'asyncrun.vim'}, { cmd = "AsyncRun", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Tabularize lua require("packer.load")({'tabular'}, { cmd = "Tabularize", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType python ++once lua require("packer.load")({'vim-pythonsense', 'vim-python-pep8-indent'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType toml ++once lua require("packer.load")({'vim-toml'}, { ft = "toml" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-markdown', 'vim-json', 'vim-markdownfootnotes'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'vim-json'}, { ft = "json" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'vim-startify', 'vim-airline-themes', 'nvim-lspconfig'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-compe', 'ultisnips', 'better-escape.vim', 'vim-snippets'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], true)
vim.cmd [[source /home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], false)
time([[Sourcing ftdetect script at: /home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-toml/ftdetect/toml.vim]], true)
vim.cmd [[source /home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-toml/ftdetect/toml.vim]]
time([[Sourcing ftdetect script at: /home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-toml/ftdetect/toml.vim]], false)
time([[Sourcing ftdetect script at: /home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-json/ftdetect/json.vim]], true)
vim.cmd [[source /home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-json/ftdetect/json.vim]]
time([[Sourcing ftdetect script at: /home/xelphif/.local/share/nvim/site/pack/packer/opt/vim-json/ftdetect/json.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
