call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle'}
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'

" Rust plugin
Plug 'rust-lang/rust.vim'
Plug 'preservim/tagbar'
Plug 'vim-syntastic/syntastic'

"colorschemes
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'

call plug#end()


filetype plugin indent on

" Main Configuration
"

syntax on
colorscheme gruvbox
set number relativenumber
set expandtab
set tabstop=4

set hlsearch
set incsearch

set encoding=utf-8
set fencs=utf-8
set nocompatible

set guioptions=
set showtabline=0
set wrap linebreak nolist
set cursorline

" Tagbar
nmap <F8> :TagbarToggle<CR>

"powerline
let g:airline_powerline_fonts = 1
let g:Powerline_symbols='unicode'
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:airline#extensions#xkblayout#enabled = 0

" RustFmt
let g:rustfmt_autosave = 1 

"mappings

map <C-n> :NERDTreeToggle<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

