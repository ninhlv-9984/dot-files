call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'ap/vim-css-color'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-denite'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
call plug#end()

set encoding=UTF-8

set hidden
set nobackup
set nowritebackup
set number
set cmdheight=2
set updatetime=300

map <C-n> :NERDTreeToggle<CR>
set tabstop=2
set shiftwidth=2
set expandtab

let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_char_list = ['·']

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

let g:rooter_change_directory_for_non_project_files = 'current'

nnoremap <up>    <Esc>:echoerr 'Use k' <CR>
nnoremap <down>  <Esc>:echoerr 'Use j' <CR>
nnoremap <left>  <Esc>:echoerr 'Use h' <CR>
nnoremap <right> <Esc>:echoerr 'Use l' <CR>

inoremap <up>    <Esc>:echoerr 'Use k' <CR>
inoremap <down>  <Esc>:echoerr 'Use j' <CR>
inoremap <left>  <Esc>:echoerr 'Use h' <CR>
inoremap <right> <Esc>:echoerr 'Use l' <CR>

set wildignore+=*/node_modules/*
map <C-p> :CtrlP <CR>

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_conceal_function = "ƒ"
let g:javascript_coceal_null      = "ø"
