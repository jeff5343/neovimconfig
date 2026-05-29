return {
  {
    'rmagatti/auto-session',
    lazy = false,
    opts = {
      auto_restore = true,
      auto_save = true,
      auto_create = true,
      git_use_branch_name = false,
      suppressed_dirs = { '~/', '~/Downloads', '/' },
      cwd_change_handling = false,
    },
    keys = {
      { '<leader>ws', '<cmd>AutoSession save<CR>', desc = '[W]orkspace [S]ession save' },
      { '<leader>wr', '<cmd>AutoSession restore<CR>', desc = '[W]orkspace [R]estore session' },
      { '<leader>wd', '<cmd>AutoSession delete<CR>', desc = '[W]orkspace [D]elete session' },
    },
  },

  { -- Harpoon
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function(_, opts)
      local harpoon = require 'harpoon'

      harpoon:setup()

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end)
      vim.keymap.set('n', '<C-d>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      vim.keymap.set('n', '<C-n>', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<C-m>', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<C-,>', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<C-.>', function()
        harpoon:list():select(4)
      end)

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set('n', '<C-S-P>', function()
        harpoon:list():prev()
      end)
      vim.keymap.set('n', '<C-S-N>', function()
        harpoon:list():next()
      end)
    end,
  },

  { -- Leetcode Nvim
    'kawre/leetcode.nvim',
    -- build = ':TSUpdate html', -- if you have `nvim-treesitter` installed
    dependencies = {
      -- include a picker of your choice, see picker section for more details
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
    },
    opts = {
      -- configuration goes here
    },
  },

  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    -- Optional dependencies
    -- dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
    config = function()
      require('oil').setup {
        columns = { 'icon' },
        keymaps = {
          ['<C-h>'] = false,
          ['<C-l>'] = false,
        },
        view_options = {
          -- Show files and directories that start with "."
          show_hidden = true,
        },
      }

      vim.keymap.set('n', '-', '<cmd>Oil<CR>', { desc = 'Open parent directory' })
    end,

    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },

  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = 'zathura'
    end,
  },

  {
    'greggh/claude-code.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim', -- Required for git operations
    },
    config = function()
      require('claude-code').setup()
    end,
  },

  {
    'vimwiki/vimwiki',
  },

  {
    'sindrets/diffview.nvim',
  },

}
