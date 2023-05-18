vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guibg=#282828 gui=nocombine]] -- change to match background
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#3e3e3e gui=nocombine]]

require("indent_blankline").setup {
    char = "",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    space_char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
    },
    show_trailing_blankline_indent = false,
}
