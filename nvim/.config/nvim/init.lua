local global = vim.g
local opt = vim.o

global.mapleader = " "
global.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nglobal.t",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "tpope/vim-sleuth",

    {
        "f-person/git-blame.nvim",
        opts = {
            enabled = true,
            delay = 250,
        },
    },

    {
        "lewis6991/gitsigns.nvim",
        opts = {},
    },

    {
        "mellow-theme/mellow.nvim",
        name = "mellow",
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme mellow]])
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "kyazdani42/nvim-web-devicons",
        },
        config = true,
        opts = {}

    },

    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
            vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
            vim.keymap.set("n", "<leader>fs", function()
                builtin.grep_string({ search = vim.fn.input("Grep > ") })
            end)

            vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
        end
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "c",
                    "lua",
                    "vim",
                    "vimdoc",
                    "query",
                    "json",
                    "html",
                    "css",
                    "typescript",
                    "javascript",
                    "rust",
                    "markdown",
                    "markdown_inline",
                    "python",
                    "regex",
                    "yaml",
                },
                auto_install = true, -- Needs `tree-sitter` CLI locally

                highlight = {
                    enable = true,
                },
                indent = {
                    enable = true,
                },
            })
        end,
    },
})


-- [[ Options ]]
opt.number = true         -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.scrolloff = 999       -- No. of context line around cursor
opt.encoding = "utf8"     -- Set character encoding
opt.fileencoding = "utf8" -- Set file endcoding
opt.syntax = "ON"         -- Enable syntax highlighting
opt.termguicolors = true  -- Enable 24-bit color in TUI
opt.ignorecase = true     -- Ignore casing in search pattern
opt.smartcase = true      -- Override ignorecase if search contains capitals
opt.incsearch = true      -- Turn on incremental search
opt.hlsearch = true       -- Hightlight search matches
opt.expandtab = true      -- Use spaces instead of tabs
opt.shiftwidth = true     -- Set size of indentation
opt.tabstop = 2           -- Number of spaces tabs count for
opt.softtabstop = 2       -- -||-, but for insert mode
opt.autoindent = true     -- Use indent from previous line
opt.smartindent = true    -- Use "smart" (aka C) indent


-- [[ Hard mode ]]
vim.keymap.set("n", "<up>", "<nop>")
vim.keymap.set("n", "<down>", "<nop>")
vim.keymap.set("n", "<left>", "<nop>")
vim.keymap.set("n", "<right>", "<nop>")
vim.keymap.set("i", "<up>", "<nop>")
vim.keymap.set("i", "<down>", "<nop>")
vim.keymap.set("i", "<left>", "<nop>")
vim.keymap.set("i", "<right>", "<nop>")

-- [[ Keybinds ]]
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

