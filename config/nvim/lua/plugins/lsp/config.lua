local nvim_lsp = require('lspconfig')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local servers = { 'lua_ls', 'tsserver', 'eslint', 'cssls', 'html', 'rust_analyzer' }

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = servers
})

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 150,
    },
    root_dir = function() return vim.loop.cwd() end
  }
end

-- prevent formatting clashes with null-ls
nvim_lsp.tsserver.setup({
  capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
  on_attach = function(client)
    client.resolved_capabilities.document_formatting = false
  end,
})

nvim_lsp.clangd.setup {
  cmd = {
    'clangd',
    '--index',
    '--background-index',
    '--suggest-missing-includes',
    '--clang-tidy',
    '--header-insertion=iwyu',
    '--function-arg-placeholders',
    '--completion-style=detailed',
    '--log=verbose',
  },
  capabilities = capabilities
}
