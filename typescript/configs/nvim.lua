vim.lsp.config("biome", {
    cmd = { "biome", "lsp-proxy" },
    filetypes = {
        "astro",
        "css",
        "graphql",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "jsonc",
        "svelte",
        "typescript",
        "typescriptreact",
        "vue",
    },
    root_markers = {
        ".git",
        "biome.json",
        "biome.jsonc",
        ".biome.json",
        ".biome.jsonc",
        "package.json",
    },
})

vim.lsp.config("typescript-language-server", {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
    },
    root_markers = { ".git", "jsconfig.json", "package.json", "tsconfig.json" },
    on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
    end,
})

vim.lsp.enable("biome")
vim.lsp.enable("typescript-language-server")
