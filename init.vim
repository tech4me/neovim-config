call plug#begin('~/.local/share/nvim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'mfulz/cscope.nvim'

call plug#end()

" colorscheme
colorscheme monokain

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Airline themes
let g:airline_theme='dark'

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Mapping for terminal mode
tnoremap <Esc> <C-\><C-n>

" clang-format
map <C-K> :pyf /usr/share/vim/addons/syntax/clang-format.py<cr>

set termguicolors

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smarttab
set autoindent

set number
set ruler

set nobackup
set nowb
set noswapfile

filetype plugin on

" Search
set incsearch
set ignorecase
set hlsearch
nnoremap  <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Easy buffer switch
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" Use per project .nvimrc
set exrc
set secure

" Remove tailing white space
fun! RemoveWhiteSpace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfun

" For Makefile Use Hard Tab
autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0
