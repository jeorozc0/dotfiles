return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    close_if_last_window = true,
    enable_git_status = true,
    enable_diagnostics = true,
    sources = {
      "filesystem",
      "buffers",
      "git_status",
    },
    source_selector = {
      winbar = true,
      content_layout = "center",
      tabs_layout = "equal",
    },
    default_component_configs = {
      indent = {
        with_expanders = true,
        expander_collapsed = "",
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
    },
    window = {
      position = "float",
      width = function()
        return math.floor(vim.opt.columns:get() * 0.5)
      end,
      height = function()
        return math.floor(vim.opt.lines:get() * 0.5)
      end,
      float = {
        enable = true,
        quit_on_focus_loss = true,
        open_win_config = function()
          local screen_w = vim.opt.columns:get()
          local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
          local window_w = screen_w * 0.5
          local window_h = screen_h * 0.5
          local window_w_int = math.floor(window_w)
          local window_h_int = math.floor(window_h)
          local center_x = (screen_w - window_w) / 2
          local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
          return {
            border = "rounded",
            relative = "editor",
            row = center_y,
            col = center_x,
            width = window_w_int,
            height = window_h_int,
          }
        end,
      },
      mappings = {
        ["<space>"] = false, -- disable space until we figure out which-key disabling
        ["[b"] = "prev_source",
        ["]b"] = "next_source",
      },
    },
    filesystem = {
      follow_current_file = {
        enabled = true, -- new table format
      },
      hijack_netrw_behavior = "open_current",
      use_libuv_file_watcher = true,
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          ".git",
        },
      },
    },
    event_handlers = {
      {
        event = "neo_tree_buffer_enter",
        handler = function(_)
          vim.opt_local.relativenumber = true
        end,
      },
    },
    commands = {
      system_open = function(state)
        -- TODO: just use vim.ui.open when dropping support for Neovim <0.10
        (vim.ui.open or require("lazy.util").open)(state.tree:get_node():get_id())
      end,
    },
  },
  config = function(_, opts)
    local function on_move(data)
      Util.lsp.on_rename(data.source, data.destination)
    end

    local events = require("neo-tree.events")
    opts.event_handlers = opts.event_handlers or {}
    vim.list_extend(opts.event_handlers, {
      { event = events.FILE_MOVED, handler = on_move },
      { event = events.FILE_RENAMED, handler = on_move },
    })

    require("neo-tree").setup(opts)
    vim.api.nvim_create_autocmd("TermClose", {
      pattern = "*lazygit",
      callback = function()
        if package.loaded["neo-tree.sources.git_status"] then
          require("neo-tree.sources.git_status").refresh()
        end
      end,
    })
  end,
}
