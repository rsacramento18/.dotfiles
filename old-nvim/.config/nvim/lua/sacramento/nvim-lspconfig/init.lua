local lspconfig = require'lspconfig'

local on_attach = require'sacramento.nvim-lspconfig.on_attach'
local format_config = require'sacramento.nvim-lspconfig.format'
require('sacramento.nvim-lspconfig.ui').setup()

local servers = {
  efm = {
    filetypes = vim.tbl_keys(format_config),
    init_options = { documentFormatting = true },
    root_dir = lspconfig.util.root_pattern { 'package.json','.eslintrc','.git/', '.' },
    settings = { languages = format_config },
  }
}

local function get_config(server_name)
  local config = servers[server_name] or {}
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  if package.loaded['cmp_nvim_lsp'] then
    capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
  end
  config.on_attach = on_attach
  return config
end

require('nvim-lsp-installer').on_server_ready(function(server)
  server:setup(get_config(server.name))
  vim.cmd [[ do User LspAttachBuffers ]]
end)
