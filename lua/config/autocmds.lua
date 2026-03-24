-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Force clipboard over SSH — must be scheduled to run after LazyVim's
-- deferred clipboard restore (init.lua line 193) which also fires on VeryLazy
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

-- Disable LazyVim's spell check for text filetypes
vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Use cindent instead of treesitter indent for C/C++ (treesitter indent is buggy)
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    vim.bo.indentexpr = ""
    vim.bo.cindent = true
    vim.bo.cinoptions = "(0,Ws"
  end,
})
