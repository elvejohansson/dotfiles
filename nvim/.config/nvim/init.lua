require('_packer')
require('keymap')
require('options')

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
