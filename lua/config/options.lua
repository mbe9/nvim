-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable smooth scrolling (no animation on jumps)
vim.opt.smoothscroll = false

-- Enable project-local config (.nvim.lua) — equivalent of Emacs .dir-locals.el
vim.opt.exrc = true

-- Set to `false` to globally disable all snacks animations
vim.g.snacks_animate = false

-- Disable tabline
vim.opt.showtabline = 0

-- Disable spellcheck
vim.opt.spell = false

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
