return {
    "williamboman/mason.nvim",
    dependencies = {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        local mason = require("mason")
        local mason_tool_installer = require("mason-tool-installer")

        -- enable mason
        mason.setup({
            ui = {
                border = "rounded",
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                -- Language Servers
                "lua-language-server",
                "gopls",
                "basedpyright",
                "typescript-language-server",
                "astro-language-server",
                "html-lsp",
                "tailwindcss-language-server",
                "dockerfile-language-server",
                "docker-compose-language-service",

                -- Formatters
                "biome",
                "prettier",
                "black",
                "isort",
                "stylua",

                -- Linters
                "eslint_d",
                "ruff",
                "hadolint",
            },
        })
    end,
}
