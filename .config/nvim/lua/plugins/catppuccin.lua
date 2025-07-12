return {
    {
        "catppuccin/nvim",
        lazy = false,
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                integrations = {
                    treesitter = true,
                },
                highlight_overrides = {
                    mocha = function(colors)
                        return {
                            ["@function"] = { fg = colors.yellow, bold = true },
                            ["@function.call"] = { fg = colors.yellow, bold = true },
                            ["@variable"] = { fg = colors.text, italic = true },
                            ["@variable.builtin"] = { fg = colors.red, italic = true },
                            ["@type"] = { fg = colors.teal, underline = true },
                            ["@tag"] = { fg = colors.green, bold = true },
                            ["@keyword"] = { fg = colors.mauve, italic = true },
                            ["@comment"] = { fg = colors.overlay1, italic = true },
                        }
                    end,
                },
            })
            vim.cmd.colorscheme("catppuccin-mocha")
        end,
    }
}
