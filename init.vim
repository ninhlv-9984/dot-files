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
Plug 'jiangmiao/auto-pairs'
call plug#end()

" coc config
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300

nmap <silent> gd <Plug>(coc-definition)
nmap <leader>rn<Plug>(coc-rename)


map <C-n> :NERDTreeToggle<CR>
set background=dark
set termguicolors
colorscheme quantum

let g:rooter_change_directory_for_non_project_files = 'current'
