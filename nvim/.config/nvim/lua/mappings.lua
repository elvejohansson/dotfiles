vim.g.mapleader = " "

vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

vim.keymap.set('n', '<up>', '<nop>')
vim.keymap.set('n', '<down>', '<nop>')
vim.keymap.set('n', '<left>', '<nop>')
vim.keymap.set('n', '<right>', '<nop>')
vim.keymap.set('i', '<up>', '<nop>')
vim.keymap.set('i', '<down>', '<nop>')
vim.keymap.set('i', '<left>', '<nop>')
vim.keymap.set('i', '<right>', '<nop>')

vim.keymap.set('n', '<leader>PS', '<Cmd>PackerSync<CR>')

vim.keymap.set("n", "<leader>M", "<Cmd>Mason<CR>", { silent = true })
