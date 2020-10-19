call plug#begin()
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
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" coc config
set hidden
set nobackup
set nowritebackup
set number
set cmdheight=2
set updatetime=300

nmap <silent> gd <Plug>(coc-definition)
nmap <leader>rn<Plug>(coc-rename)

map <C-n> :NERDTreeToggle<CR>
set background=dark
set termguicolors
colorscheme dracula

set tabstop=2
set shiftwidth=2
set expandtab

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

let g:rooter_change_directory_for_non_project_files = 'current'

set wildignore+=*/node_modules/*,*/tmp/*,*/vendor/*
map <C-p> :CtrlP <CR>

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
