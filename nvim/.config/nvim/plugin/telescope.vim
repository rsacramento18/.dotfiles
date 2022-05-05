lua require('sacramento')
nnoremap <silent> <leader>pj :Telescope project<CR>
nnoremap <C-f> <cmd>Telescope find_files<CR>
nnoremap <C-s> <cmd>Telescope live_grep<CR>

nnoremap <leader>pf :lua require('sacramento.telescope').find_all_projects()<CR>
nnoremap <leader>ps :lua require('sacramento.telescope').grep_all_projects()<CR>
nnoremap <leader>dc :lua require('sacramento.telescope').documents()<CR>

nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>

nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>dof :lua require('sacramento.telescope').search_dotfiles()<CR>
nnoremap <leader>gb :lua require('sacramento.telescope').git_branches()<CR>




