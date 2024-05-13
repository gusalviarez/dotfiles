return {
  "f-person/auto-dark-mode.nvim",
  config = {
    update_interval = 1000,

  },
  keys = {
    {
      "<leader>tt", function()
      -- Check current background mode
      if vim.api.nvim_get_option("background") == "dark" then
        vim.api.nvim_set_option("background", "light")
      else
        vim.api.nvim_set_option("background", "dark")
      end
    end
    },

  }
}
