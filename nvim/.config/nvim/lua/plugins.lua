local fn = vim.fn
local cmd = vim.cmd

-- Boostrap Packer
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
local packer_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone','https://github.com/wbthomason/packer.nvim', install_path})
end
cmd([[packadd packer.nvim]])

-- Rerun PackerCompile when plugins change
cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
    use({
        'wbthomason/packer.nvim',
        opt = true
    })

    use({
        "williamboman/mason.nvim",
        run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    })

    use({
        'williamboman/mason-lspconfig.nvim',
        config = function() require('plugins.mason-lspconfig') end,
    })

    use({
        'neovim/nvim-lspconfig',
    })

    use 'lewis6991/gitsigns.nvim'

    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin 

    use { "catppuccin/nvim", as = "catppuccin" }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
