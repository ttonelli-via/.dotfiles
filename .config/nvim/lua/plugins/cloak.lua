return {
    "laytan/cloak.nvim",
    config = function()
        require("cloak").setup({
            cloak_character = "*",
            cloak_length = 16,
            highlight_group = "Comment",
            patterns = {
                {
                    file_pattern = ".env*",
                    cloak_pattern = "=.+",
                },
            },
        })

        vim.keymap.set("n", "<leader>ct", "<CMD>CloakToggle<CR>", { desc = "Toggle Cloak" })
    end,
}
