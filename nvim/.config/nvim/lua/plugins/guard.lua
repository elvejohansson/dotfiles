return {
  {
    "nvimdev/guard.nvim",
    dependencies = {
      "nvimdev/guard-collection",
    },
    event = "BufReadPre",
    config = function()
      local ft = require("guard.filetype")

      ft("c,cpp"):fmt("lsp"):append("clang-format")
      ft("lua"):fmt("stylua")
      ft("go"):fmt("gofmt")

      require("guard").setup({
        fmt_on_save = true,
        lsp_as_default_formatter = true,
      })
    end,
  },
}
