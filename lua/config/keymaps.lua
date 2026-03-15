-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-/>", function()
  require("snacks").terminal.toggle()
end, { desc = "Toggle Terminal" })

vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
