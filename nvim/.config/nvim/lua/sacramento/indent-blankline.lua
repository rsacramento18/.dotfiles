if not pcall(require, "indent_blankline") then
  return
end

vim.opt.list=true
vim.opt.listchars:append("eol:↴")


require("indent_blankline").setup {
  show_end_of_line = true,
}
