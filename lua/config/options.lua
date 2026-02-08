-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.tabstop = 4

vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.scrolloff = 10
