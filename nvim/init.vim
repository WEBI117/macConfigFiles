call plug#begin('~/.vim/plugged')
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'mhartington/oceanic-next'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'hrsh7th/nvim-compe'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

"Color theme
"set t_Co=256
"if (has("termguicolors"))
"  set termguicolors
"endif

syntax on
if (has("termguicolors"))
  set termguicolors
endif
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark
colorscheme palenight
hi Normal guibg=None ctermbg=NONE
"For paleNight only
"hi Normal guibg=#1f2335 ctermbg=NONE

"Basic
let mapleader = ","
set timeoutlen=500
set showcmd
set number relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set ttimeoutlen=100

"LightLine Settings.
set noshowmode
set laststatus=2
"let g:lightline = { 'colorscheme': 'palenight' }
let g:lightline = { 'colorscheme': 'tokyonight' }

"Nerd-Tree Mappings.
nnoremap <F3> :NERDTreeToggle<CR>

"Deoplete Settings
let g:deoplete#enable_at_startup = 1

"NVIM LSP Settings
lua << EOF
require'lspconfig'.tsserver.setup{}
EOF

"Source lua files.
luado require('compeSettings') 
luado require('lspConfigSettings') 

"Vimrc edditing Mappings
nnoremap <leader>sr :source $MYVIMRC<CR>
nnoremap <leader>er :e! $MYVIMRC<CR>

"Window splits Mappings
nnoremap <leader>ss :vsp<CR>
nnoremap <leader>sv :sp<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <S-Up> <C-w>10+
nnoremap <S-down> <C-w>10-
nnoremap <S-right> <C-w>10>
nnoremap <S-left> <C-w>10<

"Tabs Mappings
nnoremap <leader>tt :tabnew<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <right> :tabnext<CR>
nnoremap <left> :tabprevious<CR>

" General Mappings
nnoremap <leader><Space> :noh<CR>
"ToDo
" Persistent visual mode selections during move commands
" Linting Autocompletion and usages

