vim.lsp.config("gopls", {
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gowork", "gotmpl" },
    root_markers = { ".git", "go.work", "go.mod" },
    settings = {
        gopls = {
            gofumpt = true,
            staticcheck = true,
        },
    },
})

vim.lsp.enable("gopls")
