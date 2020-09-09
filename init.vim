call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'

Plug 'ayu-theme/ayu-vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'justinmk/vim-sneak'

Plug 'tpope/vim-commentary'

Plug 'preservim/nerdtree'

call plug#end()

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" switch to your current theme
" let g:airline_theme = 'sonokai'

" important!!
set termguicolors
set hidden

let g:rehash256 = 1
let ayucolor = "dark"
colorscheme ayu

let g:sneak#label = 1

" Always show tabs
set showtabline=2
" We don't need to see things like -- INSERT -- anymore
set noshowmode

set number
set expandtab
set autoindent
set smartindent
set ts=4 sw=4
set relativenumber

" New line adding doesn't enter Insert mode now
nnoremap o o<Esc>
nnoremap O O<Esc>

map <C-n> :NERDTreeToggle<CR>

source ~/.config/nvim/modules/coc.vim
