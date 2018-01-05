call plug#begin('~/.local/share/nvim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

call plug#end()

" colorscheme
colorscheme monokain

" Airline
let g:airline_powerline_fonts = 1

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Use deoplete.
"let g:deoplete#enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" No preview
set completeopt-=preview

" mapping for terminal mode
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

" Search
set incsearch
set ignorecase
set hlsearch
nnoremap  <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Remove tailing white space
fun! RemoveWhiteSpace()
    let l:save = winsaveview()
    %s/\s\+$//e
    call winrestview(l:save)
endfun

" For Makefile Use Hard Tab
autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0
