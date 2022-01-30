" Debugger remaps
nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <leader>dp :lua require'dap'.toggle_breakpoint()<CR>

nnoremap <leader>d<space> :lua require'dap'.continue()<CR>
nnoremap <leader>dl :lua require'dap'.step_over()<CR>
nnoremap <leader>dj :lua require'dap'.step_into()<CR>

