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
        "laytan/cloak.nvim",
        opts = {
            enabled = true,
            cloak_character = "*",
            patterns = {
                {
                    file_pattern = ".env*",
                    cloak_pattern = "=.+",
                    replace = nil,
                },
            },
        },
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = {
                char = "▏",
                smart_indent_cap = true,
            },
            scope = {
                enabled = true,
            },
        },
    },

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
        "folke/todo-comments.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        opts = {},
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
        opts = {
            ensure_installed = { "c", "lua", "vimdoc", "json", "yaml" },
            auto_install = true, -- Needs `tree-sitter` CLI locally
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        },
    },

    {
        "neovim/nvim-lspconfig",
        init_options = {
            eelixir = "html-eex",
            eruby = "erb",
            rust = "html",
        },
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "folke/neodev.nvim",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
            "hrsh7th/cmp-nvim-lsp",
        }
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
opt.shiftwidth = 4        -- Set size of indentation
opt.tabstop = 2           -- Number of spaces tabs count for
opt.softtabstop = 2       -- -||-, but for insert mode
opt.autoindent = true     -- Use indent from previous line
opt.smartindent = true    -- Use "smart" (aka C) indent
opt.signcolumn = "yes"    -- Always show signcolumn


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

local cmp = require("cmp")

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    window = {},
    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "vsnip" },
    }, {
        { name = "buffer" },
    }),
})

require("mason").setup()
require("mason-lspconfig").setup()

require("neodev").setup({})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("mason-lspconfig").setup_handlers({
    --  default handler, will be called for each installed
    --  server that doesnt have a dedicated handler
    function(server_name)
        require("lspconfig")[server_name].setup({
           capabilities = capabilities
        })
    end
})

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),

    callback = function(ev)
        local opts = { buffer = ev.buf }

        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gR", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "gF", vim.lsp.buf.code_action, opts)
    end,
})
