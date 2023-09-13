require('keymap')
require('options')
require('_lazy')

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
