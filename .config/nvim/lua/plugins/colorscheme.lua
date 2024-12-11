-- plugins/colorscheme.lua
return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  -- Add monochrome theme
  { "kdheepak/monochrome.nvim" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        disable_background = true,
        disable_float_background = true,
      })
      vim.cmd("colorscheme rose-pine")
    end,
  },
  -- Configure LazyVim to load rose-pine
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
