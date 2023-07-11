---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "ayu_dark",
  theme_toggle = { "ayu_dark", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

-- copilot 
-- vim.g.copilot_assume_mapped = true
-- vim.g.copilot_key = "<c-x>"
-- vim.g.copilot_key_next = "<a-n>"
-- vim.g.copilot_assume_mapped = true
-- vim.g.copilot_no_tab_map = true
-- vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- codeium
vim.api.nvim_set_keymap("i", "<C-J>", 'codeium#Accept()', { silent = true, expr = true })

-- Change the copilot accep inline suggestion key 
--vim.g['copilot_no_tab_map'] = true
--vim.g['copilot_assume_mapped'] = true
--function map(mode, key, fn, opts)
--  vim.api.nvim_set_keymap(mode, key, fn, opts or {})
--end
--map('i', '<C-/>', ':call copilot#Accept()<CR>')

vim.cmd("set guifont=Hack\\ Nerd\\ Font:h10")
vim.cmd("set autoindent")
vim.cmd("set linebreak")
vim.cmd("set breakindent")

-- Set the number of lines to scroll
vim.api.nvim_win_set_option(0, 'scrolloff', 20)         -- Set the number of lines from top/bottom to start scrolling
vim.api.nvim_win_set_option(0, 'sidescrolloff', 10)    -- Set the number of columns from the side to start horizontal scrolling

-- vim.cmd('colorscheme gruvbox')
-- vim.cmd('set background=dark')
-- vim.cmd('colorscheme gruvbox')



return M
