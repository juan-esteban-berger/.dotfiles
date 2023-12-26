-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_set_keymap("v", "<C-S-C>", '"+y', { noremap = true, silent = true 
})
vim.api.nvim_set_keymap("n", "<C-S-C>", '"+yy', { noremap = true, silent = true 
})
vim.api.nvim_set_keymap("v", "<C-S-V>", '"+p', { noremap = true, silent = true 
})
vim.api.nvim_set_keymap("n", "<C-S-V>", '"+p', { noremap = true, silent = true 
})

vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-c>", '"+yy', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })
vim.wo.number = true
