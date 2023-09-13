local opt = vim.o

-- [[ Line rendering ]]
opt.colorcolumn = 80      -- Show column for max line length
opt.number = true         -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.scrolloff = 999       -- No. of context line around cursor
opt.signcolumn = "no"     -- Should we show the signcolumn?

-- [[ Filetypes ]]
opt.encoding = "utf8"     -- Set character encoding
opt.fileencoding = "utf8" -- Set file endcoding

-- [[ Theme/colors ]]
opt.syntax = "ON"        -- Enable syntax highlighting
opt.termguicolors = true -- ?

-- [[ Search ]]
opt.ignorecase = true -- Ignore casing in search pattern
opt.smartcase = true  -- Override ignorecase if search contains capitals
opt.incsearch = true  -- Turn on incremental search
opt.hlsearch = true   -- Hightlight search matches

-- [[ Whitespace ]]
opt.expandtab = true   -- Use spaces instead of tabs
opt.shiftwidth = true  -- Set size of indentation
opt.tabstop = 4        -- Number of spaces tabs count for
opt.softtabstop = 4    -- -||-, but for insert mode
opt.autoindent = true  -- Use indent from previous line
opt.smartindent = true -- Use "smart" (aka C) indent
