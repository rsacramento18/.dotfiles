if has('termguicolors')
    set termguicolors
endif

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

set background=dark
colorscheme gruvbox


hi SignColumn guibg=none
highlight ColorColumn ctermbg=0 guibg=grey
hi CursorLineNR guibg=None
