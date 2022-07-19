if not pcall(require, "indent_blankline") then
  return
end

vim.opt.list=true
vim.opt.listchars:append("eol:↴")

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#575861 gui=nocombine]]

require("indent_blankline").setup {
  show_end_of_line = true,
  show_current_context = true,
  char_highlight_list = {
    "IndentBlanklineIndent1",
  },
}
