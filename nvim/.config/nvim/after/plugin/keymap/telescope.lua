local Remap = require("sacramento.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", function()
  require('telescope.builtin').git_files()
end)

nnoremap("<leader>ps", ":Telescope live_grep hidden=true<CR>")

nnoremap("<leader>pf", ":Telescope   find_files hidden=true<CR>")

nnoremap("leader>pw", function()
  require('telescope.builtin').grep_string { search =  vim.fn.expand("<cword>") }
end)

nnoremap("<leader>pb", function()
  require('telescope.builtin').buffers()
end)
