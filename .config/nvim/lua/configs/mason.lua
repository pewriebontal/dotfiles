local M = {}

M.treesitter = {
    ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "typescript",
        "c",
        "cpp",
        "python",
    },
}

M.mason = {
    ensure_installed = {
        -- C / C++
        "clangd",
        "clang-format",
        "cmake-language-server",
        "cpplint",
        "cpptools",
    }
}

return M
