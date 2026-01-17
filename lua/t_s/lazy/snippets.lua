return {
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp",

        dependencies = { "rafamadriz/friendly-snippets" },

        config = function()
            local ls = require("luasnip")
            ls.filetype_extend("lua", { "luadoc" })
            ls.filetype_extend("javascript", { "jsdoc" })
            ls.filetype_extend("c", { "cdoc" })
            ls.filetype_extend("cpp", { "cppdoc" })
            ls.filetype_extend("rust", { "rustdoc" })
            ls.filetype_extend("java", { "javadoc" })
            ls.filetype_extend("sh", { "shelldoc" })
        end,
    }
}
