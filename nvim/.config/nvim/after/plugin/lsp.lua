local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
})

lsp.set_preferences({
    sign_icons = { }
})

lsp.setup()
