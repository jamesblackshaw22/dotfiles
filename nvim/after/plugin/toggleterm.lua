require("toggleterm").setup({
    direction = 'horizontal',
    size = 10,
    close_on_exit = true,
    autoscroll = true,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    autochdir = true,
    shell = vim.o.shell,
    start_in_insert = true,
})
