vim.lsp.config("rust-analyzer", {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
    root_markers = { ".git", "Cargo.toml", "Cargo.lock" },
})

vim.lsp.enable("rust-analyzer")
