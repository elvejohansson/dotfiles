-- [[ Leader ]]
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ Hard mode ]]
vim.keymap.set('n', '<up>', '<nop>')
vim.keymap.set('n', '<down>', '<nop>')
vim.keymap.set('n', '<left>', '<nop>')
vim.keymap.set('n', '<right>', '<nop>')
vim.keymap.set('i', '<up>', '<nop>')
vim.keymap.set('i', '<down>', '<nop>')
vim.keymap.set('i', '<left>', '<nop>')
vim.keymap.set('i', '<right>', '<nop>')

-- [[ Keybinds ]]
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- [[ Lazy ]]
vim.keymap.set("n", "<leader>l", ":Lazy<Enter>")

-- [[ Mason ]]
vim.keymap.set("n", "<leader>m", ":Mason<Enter>")

-- [[ Cloak ]]
vim.keymap.set("n", "<leader>C", ":CloakToggle<Enter>")
