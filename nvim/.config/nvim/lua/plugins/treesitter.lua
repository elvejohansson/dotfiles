return {
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
}
