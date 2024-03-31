return {
    -- Rust Plugins
    {
        "mrcjkb/rustaceanvim",
        version = "^4",
        ft = { "rust" },
        config = function()
            vim.g.rustaceanvim = {
                tools = {},
                server = {
                    on_attach = function(_, bufnr)
                        vim.keymap.set("n", "<leader>xp", "<CMD>RustLsp expandMacro<CR>", { buffer = bufnr, desc = "E[xp]and Macro" })
                        vim.keymap.set("n", "<leader>rp", "<CMD>RustLsp rebuildProcMacros<CR>", { buffer = bufnr, desc = "[R]ebuild [P]roc Macros" })
                        vim.keymap.set("n", "<leader>rs", "<CMD>RustAnalyzer restart<CR>", { buffer = bufnr, desc = "Rust Analyzer [R]e[s]tart" })
                    end,
                },
            }
        end,
    },
    {
        "saecki/crates.nvim",
        event = "BufRead Cargo.toml",
        dependencies = { { "nvim-lua/plenary.nvim" } },
        config = function()
            require("crates").setup({})
        end,
    },
}
