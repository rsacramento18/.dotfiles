set completeopt=menu,menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

fun! LspLocationList()
    lua vim.diagnostic.setloclist({open = false})
endfun

nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vh :lua vim.lsp.diagnostic.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <C-e> :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <C-i> :lua vim.lsp.diagnostic.goto_next()<CR>

nnoremap <leader>vll :call LspLocationList()<CR>

augroup THE_SACRAMENTO
    autocmd!
    autocmd! BufWrite,BufEnter,InsertLeave * :call LspLocationList()
    " autocmd! BufWritePre * undojoin | Neoformat
augroup END
