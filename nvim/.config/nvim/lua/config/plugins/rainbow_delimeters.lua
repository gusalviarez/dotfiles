    return {
        "hiphish/rainbow-delimiters.nvim",
        event = "BufRead",
        config = function()
            local rainbow_delimiters = require("rainbow-delimiters")

            vim.g.rainbow_delimiters = {
                strategy = {
                    [""] = rainbow_delimiters.strategy["global"],
                    vim = rainbow_delimiters.strategy["local"],
                },
                query = {
                    [""] = "rainbow-delimiters",
                    lua = "rainbow-blocks",
                    javascript = "rainbow-delimiters-react",
                },
                priority = {
                    [""] = 110,
                    lua = 210,
                    javascript = 310,
                },
                highlight = {
                    "RainbowDelimiterYellow",
                    "RainbowDelimiterCyan",
                    "RainbowDelimiterBlue",
                    "RainbowDelimiterOrange",
                    "RainbowDelimiterGreen",
                    "RainbowDelimiterViolet",
                    "RainbowDelimiterCyan",
                },
            }
        end,
    }
