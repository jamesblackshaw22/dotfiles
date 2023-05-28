local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) --Telescope Project Files Find
vim.keymap.set('n', '<C-p>', builtin.git_files, {})       --Telescope Git Files Find
vim.keymap.set('n', '<leader>ps', function()
builtin.grep_string({ seadrch = vim.fn.input("Grep > " ) }); --Search Using Grep in file	
end)
