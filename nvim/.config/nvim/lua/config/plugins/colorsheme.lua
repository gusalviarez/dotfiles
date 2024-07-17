return { {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        require("catppuccin").setup({
            integrations = {
                cmp = true,
                gitsigns = true,
                treesitter = true,
                which_key = true,
                rainbow_delimiters = true,
                harpoon = true,
                telescope = {
                    enabled = true,
                }
            }
        })
        vim.cmd.colorscheme "catppuccin-macchiato"
    end
}
}
