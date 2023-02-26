
-- Line settings
vim.opt.nu = true                  -- Show line numbers
vim.opt.relativenumber = true      -- Relative line numbers
vim.opt.scrolloff = 10             -- Minimum lines to keep above and below cursor


-- Tab settings
vim.opt.tabstop = 4         -- Number of spaces for <Tab> in file
vim.opt.softtabstop = 4     -- Number of spaces for <Tab> when editing
vim.opt.shiftwidth = 4      -- Number of spaces for each (auto)indent
vim.opt.expandtab = true    -- Expand tabs to spaces


-- Undo
vim.opt.undofile = true     -- Turn on undo file


-- Indenting
vim.opt.autoindent = true          -- Copy indent from current line when starting new line
vim.opt.smartindent = true         -- Smart autoindenting when starting new line


-- Misc.
vim.opt.termguicolors = true     -- Emit true 24-bit color in term
vim.opt.showmode = false         -- Don't show VI-mode
