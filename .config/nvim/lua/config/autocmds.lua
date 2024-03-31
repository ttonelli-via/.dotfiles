-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
    pattern = "*",
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- Enable text wrap and spell check for markdown and text file buffers
vim.api.nvim_create_autocmd({ "FileType" }, {
    group = vim.api.nvim_create_augroup("edit_text", { clear = true }),
    pattern = { "markdown", "txt" },
    desc = "Enable spell checking and text wrapping for certain filetypes",
    callback = function()
        vim.opt_local.wrap = true
        vim.opt_local.spell = true
    end,
})

-- Detect docker compose files and set them to the file type that the docker compose language service looks for
vim.api.nvim_create_autocmd("BufRead", {
    group = vim.api.nvim_create_augroup("DetectDockerCompose", { clear = true }),
    pattern = { "*compose*.yaml", "*compose*.yml" },
    desc = "Detect Docker Compose files",
    callback = function()
        vim.bo.filetype = "yaml.docker-compose"
    end,
})
