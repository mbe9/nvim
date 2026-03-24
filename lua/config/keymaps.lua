-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Disable macro recording (easy to trigger accidentally)
vim.keymap.set("n", "q", "<nop>")

-- Remove lazygit keybindings
vim.keymap.del("n", "<leader>gG")
vim.keymap.del("n", "<leader>gf")
vim.keymap.del("n", "<leader>gB")
vim.keymap.del("n", "<leader>gY")

-- Rebind git keys to neogit
vim.keymap.set("n", "<leader>gl", "<cmd>Neogit log<cr>", { desc = "Git Log" })
vim.keymap.set("n", "<leader>gL", "<cmd>Neogit log<cr>", { desc = "Git Log" })
vim.keymap.set("n", "<leader>gc", "<cmd>Neogit commit<cr>", { desc = "Git Commit" })
vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Git Diff" })
vim.keymap.set("n", "<leader>gb", function() require("gitsigns").blame_line({ full = true }) end, { desc = "Git Blame Line" })
