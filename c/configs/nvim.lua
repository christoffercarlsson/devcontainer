vim.lsp.config("clangd", {
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
    root_markers = {
        ".git",
        "compile_commands.json",
        "compile_flags.txt",
        ".clangd",
    },
})

vim.lsp.enable("clangd")
