require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Add Copilot keybindings
map("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Add menu plugin mapping (you can change <C-t> to any key you prefer)
map("n", "<C-t>", function()
  require("menu").open("default")
end, { desc = "Open menu" })

-- Optional: Add right-click menu support
map({ "n", "v" }, "<RightMouse>", function()
  require('menu.utils').delete_old_menus()
  vim.cmd.exec '"normal! \\<RightMouse>"'
  
  local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
  local options = vim.bo[buf].ft == "NvimTree" and "nvimtree" or "default"
  
  require("menu").open(options, { mouse = true })
end, { desc = "Open context menu" })