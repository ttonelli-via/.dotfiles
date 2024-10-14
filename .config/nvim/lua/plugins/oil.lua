return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local oil = require("oil")

        oil.setup({
            default_file_explorer = true,
            view_options = {
                show_hidden = true,
            },
            keymaps = {
                ["<C-v>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
                ["q"] = { "actions.close" },
            },
        })

        vim.keymap.set("n", "-", oil.open_float, { desc = "Open parent directory of current buffer in a floating window" })
    end,
}
