" Debugger remaps
nnoremap <leader>m :MaximizerToggle!<CR>
nnoremap <leader>dp :lua require'dap'.toggle_breakpoint()<CR>

nnoremap <leader>d<space> :lua require'dap'.continue()<CR>
nnoremap <leader>dl :lua require'dap'.step_over()<CR>
nnoremap <leader>dj :lua require'dap'.step_into()<CR>

nnoremap <leader>dr :lua require'dap'.repl.open({}, 'vsplit')<CR>
nnoremap <leader>dh :lua require'dap.ui.widgets'.hover()<CR>
nnoremap <leader>dvh :lua require'dap.ui.variables'.visual_hover()<CR>
nnoremap <leader>ds :lua local widgets=require'dap.ui.widgets';widgets.centered_float(widgets.scopes)<CR>


