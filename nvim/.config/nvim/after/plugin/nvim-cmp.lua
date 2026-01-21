local cmp = require('cmp')

cmp.setup({
  snippet = { expand = function(args) end },
  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),       -- trigger completion menu
    ['<CR>'] = cmp.mapping.confirm({ select = true }),  -- enter to confirm
    ['<Esc>'] = cmp.mapping.close(),             -- close menu manually
  },
  sources = {
    { name = 'nvim_lsp' },
  },
})
