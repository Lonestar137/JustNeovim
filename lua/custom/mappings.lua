---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.general = {
  n = {
    ["<leader>pi"] = { ":lua require(\"harpoon.mark\").add_file()<CR>", "harpoon insert", opts = { nowait = true } },
    ["<leader>pp"] = { ":lua require(\"harpoon.ui\").toggle_quick_menu()<CR>", "harpoon list", opts = { nowait = true } },
    ["<leader>ph"] = { ":lua require(\"harpoon.ui\").nav_prev()<CR>", "harpoon prev", opts = { nowait = true } },
    ["<leader>pl"] = { ":lua require(\"harpoon.ui\").nav_next()<CR>", "harpoon next", opts = { nowait = true } },
    ["<leader>mm"] = { ":ZenMode<CR>", "activate zen mode", opts = { nowait = true } },
  },
}
-- set vertical align to 80, only works if zen mode is turned on.
-- vim.cmd('vertical resize 80')

-- 
-- 

-- more keybinds!

return M
