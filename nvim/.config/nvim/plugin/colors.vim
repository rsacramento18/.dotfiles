if has('termguicolors')
    set termguicolors
endif

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" let g:gruvbox_contrast_dark = 'hard'
" let g:gruvbox_invert_selection='0'
" let g:gruvbox_material_background='hard'

set background=dark
colorscheme gruvbox


highlight ColorColumn ctermbg=0 guibg=grey
hi SignColumn guibg=none
hi CursorLineNR guibg=None
