--augroup fmt
--  autocmd!
--  autocmd BufWritePre * undojoin | Neoformat
--augroup END

--vim.g.neoformat_try_node_exe = 1

--local au_id = vim.api.nvim_create_augroup("Neoformat", { clear = true })
--vim.api.nvim_create_autocmd("BufWritePre", {
--    command = "Neoformat",
--    group = au_id,
--})
