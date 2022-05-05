return function(client)
  vim.opt.omnifunc = 'v:lua.vim.lsp.omnifunc'

  require('lsp_signature').on_attach()


  require('lspkind').init({
    -- default: true
    mode = true,

    -- default symbol map
    -- can be either 'default' (requires nerd-fonts font) or
    -- 'codicons' for codicon preset (requires vscode-codicons font)
    --
    -- default: 'default'
    preset = 'codicons',
    -- override preset symbols
    --
    -- default: {}

    symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
  })

  -- So that the only client with format capabilities is efm
  
  if client.name ~= 'efm' then
    client.resolved_capabilities.document_formatting = false
  end

  -- if client.resolved_capabilities.document_formatting then
  --   vim.cmd [[
  --   augroup Format
  --   au! * <buffer>
  --   au BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 1000)
  --   augroup END
  --   ]]
  -- end
end
