-- colors/vercel-dark.lua
-- This file is a standard “Neovim colorscheme” entry point for “Vercel Dark.”

vim.cmd("highlight clear")
if vim.g.syntax_on then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "vercel-dark"

-- Now load our actual theme logic (the highlights).
require("vercel.dark").setup()
