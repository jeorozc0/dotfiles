-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.colorscheme = "gruvbox-material"
vim.o.background = "dark"
vim.opt.relativenumber = true
vim.g.gruvbox_material_background = "hard"
lvim.log.level = "warn"
lvim.reload_config_on_save = true
lvim.builtin.breadcrumbs.active = true
lvim.format_on_save.enabled = true
lvim.plugins = {
  {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
    end
  },
}
