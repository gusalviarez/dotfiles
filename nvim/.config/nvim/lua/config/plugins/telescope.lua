return {
  "nvim-telescope/telescope.nvim",
  event = 'VeryLazy',
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-file-browser.nvim",
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    } },
  opts = {
    extensions = {
      fzf = {
        fuzzy = true,                   -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true,    -- override the file sorter
        case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
        -- the default case_mode is "smart_case"
      },
      file_browser = {
        mappings = {
          ["i"] = {
            ["<A-c>"] = fb_actions.create,
            ["<S-CR>"] = fb_actions.create_from_prompt,
            ["<A-r>"] = fb_actions.rename,
            ["<A-m>"] = fb_actions.move,
            ["<A-y>"] = fb_actions.copy,
            ["<A-d>"] = fb_actions.remove,
            ["<C-o>"] = fb_actions.open,
            ["<C-g>"] = fb_actions.goto_parent_dir,
            ["<C-e>"] = fb_actions.goto_home_dir,
            ["<C-w>"] = fb_actions.goto_cwd,
            ["<C-t>"] = fb_actions.change_cwd,
            ["<C-f>"] = fb_actions.toggle_browser,
            ["<C-h>"] = fb_actions.toggle_hidden,
            ["<C-s>"] = fb_actions.toggle_all,
            ["<bs>"] = fb_actions.backspace,
          },
        },
      },
    }
  },
  config = function(opts)
    require('telescope').setup(opts)
    require('telescope').load_extension('fzf')
  end,
  keys = {
    {
      "<leader>gf",
      function()
        require('telescope.builtin').git_files({ show_untracked = true })
      end,
      desc = "Telescope Git Files",
    },
    {
      "<leader>pb",
      function()
        require("telescope.builtin").buffers()
      end,
      desc = "Telescope buffers",
    },
    {
      "<leader>gb",
      function()
        require("telescope.builtin").git_branches()
      end,
      desc = "Telescope Git branches",
    },
    {
      "<leader>pf",
      function()
        require('telescope.builtin').find_files()
      end,
      desc = "Telescope Find Files",
    },
    {
      "<leader>ph",
      function()
        require("telescope.builtin").help_tags()
      end,
      desc = "Telescope Help"
    },
    {
      "<leader>pt",
      function()
        require("telescope").extensions.file_browser.file_browser({ path = "%:h:p", select_buffer = true })
      end,
      desc = "Telescope file browser"
    }
  },
}
