require 'config.global'
require 'config.lazy'
require 'config.autocommands'
require 'config.keymap'
require 'config.color'

vim.api.nvim_set_keymap('n', 'y', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'p', '"+p', { noremap = true, silent = true })
