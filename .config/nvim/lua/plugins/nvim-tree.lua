return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
        { "nvim-tree/nvim-web-devicons" },
    },
    config = function()
        require("nvim-tree").setup({
            on_attach = function(bufnr)
                local api = require("nvim-tree.api")

                local function opts(desc)
                    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
                end

                api.config.mappings.default_on_attach(bufnr)

                vim.keymap.del("n", "<C-k>", { buffer = bufnr }) -- This enables vim tmux navigator to work normally
                vim.keymap.set("n", "i", api.tree.toggle_gitignore_filter, opts("Toggle Filter: Git Ignore"))
                vim.keymap.set("n", ".", api.tree.toggle_hidden_filter, opts("Toggle Filter: Dotfiles"))
                vim.keymap.set("n", "I", api.node.show_info_popup, opts("Info"))
            end,
            hijack_cursor = true,
            actions = {
                open_file = {
                    quit_on_open = true,
                },
            },
            renderer = {
                icons = {
                    git_placement = "after",
                    glyphs = {
                        default = "",
                        git = {
                            unstaged = "~",
                            staged = "✔",
                            unmerged = "",
                            renamed = "➜",
                            untracked = "+",
                            deleted = "-",
                            ignored = "",
                        },
                    },
                },
            },
        })

        vim.keymap.set("n", "<C-f>", "<cmd> NvimTreeToggle <CR>", { desc = "Toggle file tree" })
    end,
}
