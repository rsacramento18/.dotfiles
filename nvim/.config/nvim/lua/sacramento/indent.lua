-- if not pcall(require, 'indent-blankline') then
--   return
-- end

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

require('indent-blankline').setup {
  blankline_char = '┊',
  blankline_use_treesitter = true,
  show_end_of_line = true;
  show_current_context = true,
  show_current_context_start = true,
}

