" Plugins (vim-plug)
call plug#begin('~/.vim/plugged')
Plug 'sainnhe/sonokai'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
" Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()


syntax on
set nu
set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set incsearch
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set signcolumn=yes


" Sonokai config
if has('termguicolors')
    set termguicolors
endif
let g:sonokai_style = 'default'
let g:sonokai_cursor = 'green' " Only works in GUI clients
colorscheme sonokai

" Airline config
let g:airline_theme = 'sonokai'
let g:airline_powerline_fonts = 1
" let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'


" netrw settings
" let g:netrw_browse_split=2
" let g:netrw_winsize=30

" Disable arrow movement, resize splits instead.
let g:elite_mode=1
if get(g:, 'elite_mode')
    nnoremap <Up>    :resize +2<CR>
    nnoremap <Down>  :resize -2<CR>
    nnoremap <Left>  :vertical resize +2<CR>
    nnoremap <Right> :vertical resize -2<CR>
endif

nnoremap <leader>f :NERDTreeToggle<CR>
