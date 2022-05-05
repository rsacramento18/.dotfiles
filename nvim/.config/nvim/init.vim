" hello front end masters
set path+=**

" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/node_modules/*
set wildignore+=**/.git/*

call plug#begin('~/.vim/plugged')

"Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'onsails/lspkind-nvim'
Plug 'ray-x/lsp_signature.nvim'

" Neovim Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'nvim-treesitter/playground'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" Telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-project.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Git plugins 
Plug 'tpope/vim-fugitive'
" Plug 'airblade/vim-gitgutter'
Plug 'lewis6991/gitsigns.nvim'

" Colorschemes
Plug 'ellisonleao/gruvbox.nvim'
Plug 'tjdevries/colorbuddy.vim'
Plug 'tjdevries/gruvbuddy.nvim'
Plug 'tomasiser/vim-code-dark'

" Misc
Plug 'mbbill/undotree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'kyazdani42/nvim-tree.lua'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'ygm2/rooter.nvim'
Plug 'nvim-neorg/neorg'


" Debuug
Plug 'mfussenegger/nvim-dap'
Plug 'szw/vim-maximizer'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

" Prettier
Plug 'sbdchd/neoformat'

call plug#end()


lua require("sacramento")
lua require'nvim-treesitter.configs'.setup { ensure_installed = { "norg", "norg_table", "haskell", "cpp", "c", "javascript", "markdown" }, indent = { enable = true }, highlight = { enable = true}, incremental_selection = { enable = true }, textobjects = { enable = true }}

if executable('rg')
  let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "
let maplocalleader = " "

nnoremap <silent> Q <nop>

nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
" nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 40<CR>
nnoremap <leader>pv :NvimTreeToggle<CR>

nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +20<CR>
nnoremap <Leader>- :vertical resize -20<CR>
nnoremap <Leader>rp :vertical resize 100<CR>

nnoremap <leader>b :b#<CR>
nnoremap <leader>bd :bd<CR>

nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

nnoremap <leader>gll :let g:_search_term = expand("%")<CR><bar>:Gclog -- %<CR>:call search(g:_search_term)<CR>
nnoremap <leader>gln :cnext<CR>:call search(_search_term)<CR>
nnoremap <leader>glp :cprev<CR>:call search(_search_term)<CR>

nnoremap <leader>fm :Neoformat<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv


nnoremap Y yg$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" greatest remap ever
xnoremap <leader>p "_dP

" next greates reamap ever
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
vnoremap <leader>d "_d

nnoremap <leader>t :terminal<CR>
tnoremap <Esc> <C-\><C-n>

inoremap <M-#> #

let g:Hexokinase_highlighters = ['backgroundfull']
