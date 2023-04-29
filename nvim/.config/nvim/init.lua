-- Load config files
require('plugins')
require('mappings')
require('options')
require('lsp')
require('theme')
require('git')


vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight CursorLine guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
  highlight StatusLine guibg=NONE ctermbg=NONE
]])
