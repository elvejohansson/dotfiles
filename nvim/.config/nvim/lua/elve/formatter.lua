--augroup fmt
--  autocmd!
--  autocmd BufWritePre * undojoin | Neoformat
--augroup END

local au_id = vim.api.nvim_create_augroup("Neoformat", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
    command = "Neoformat",
    group = au_id,
})
