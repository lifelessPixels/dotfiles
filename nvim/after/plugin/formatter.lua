require("formatter").setup({
    filetype = {
        lua = {
            require("formatter.filetypes.lua").luaformatter
        },
        c = {
            require("formatter.filetypes.c").clangformat
        },
        cpp = {
            require("formatter.filetypes.cpp").clangformat
        },
        cmake = {
            require("formatter.filetypes.cmake").cmake
        },
        ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace
        }
    }
})
