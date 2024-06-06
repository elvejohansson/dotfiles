return {
    "lukas-reineke/virt-column.nvim",
    config = function()
        vim.opt.colorcolumn = "81"
        vim.cmd([[highlight clear ColorColumn]])
        require("virt-column").setup()
    end,
}
