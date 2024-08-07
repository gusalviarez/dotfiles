return {
  "nvim-telescope/telescope.nvim",
  event = 'VeryLazy',
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make'
    }
  },
  keys = {
    { "<leader>ff", ":Telescope find_files<CR>", desc = "Find files", silent = true },
    { "<leader>fg", ":Telescope live_grep<CR>",  desc = "Live grep",  silent = true },
    { "<leader>fb", ":Telescope buffers<CR>",    desc = "Buffers",    silent = true },
    {
      "<leader>fa",
      ":Telescope find_files follow=true no_ignore=true hidden=true<CR>",
      desc = "Find files (all)",
      silent = true,
    },
  },
  config = function()
    require('telescope').setup({
      extensions = {
        fzf = {
          fuzzy = true,                 -- false will only do exact matching
          override_generic_sorter = true, -- override the generic sorter
          override_file_sorter = true,  -- override the file sorter
          case_mode = "smart_case",     -- or "ignore_case" or "respect_case"
        },
      },
      defaults = {
        layout_config = {
          prompt_position = "top",
          preview_cutoff = 0,
          horizontal = { width = 0.9, height = 0.9, preview_width = 0.6 },
        },
      },
    })
    require('telescope').load_extension('fzf')
  end,
}
