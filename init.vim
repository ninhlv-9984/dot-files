call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'ap/vim-css-color'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" coc config
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300

nmap <silent> gd <Plug>(coc-definition)
nmap <leader>rn<Plug>(coc-rename)
