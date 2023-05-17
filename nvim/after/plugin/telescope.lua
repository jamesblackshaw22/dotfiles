require('telescope').setup({
    extensions = {
        media_files = {
            find_cmd = "rg" 
        }
    }
})

require('telescope').load_extension('media_files')

require('telescope').register_extension({
    setup = function(ext_config)
        filetypes = ext_config.filetypes or {"png", "jpg"}
        find_cmd = ext_config.find_cmd or "rg"
    end,
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) --Telescope Project Files Find
vim.keymap.set('n', '<C-p>', builtin.git_files, {})       --Telescope Git Files Find
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > " ) }); --Search Using Grep in file	
end)
