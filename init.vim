let s:path = expand('<sfile>:p:h')

" System clipboard integration
set clipboard=unnamedplus

" Color Scheme
set termguicolors
" :colorscheme flattened_dark

" Disable netrw /
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

" Shortcuts
map <C-n> :NERDTreeToggle<CR>

" NeoVim Plugins
call plug#begin('~/.vim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Themes
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

"Plug 'airblade/vim-gitgutter'
"Plug 'eugen0329/vim-esearch'
"Plug 'mhartington/oceanic-next'
"Plug 'lifepillar/vim-solarized8'
"Plug 'othree/yajs.vim'
"Plug 'tpope/vim-sensible'
"Plug 'altercation/vim-colors-solarized'
"Plug 'tpope/vim-fugitive'
"Plug 'scrooloose/syntastic'
"Plug 'kien/ctrlp.vim'
"Plug 'scrooloose/nerdcommenter'
"Plug 'valloric/youcompleteme'
"Plug 'pangloss/vim-javascript'
"Plug 'ervandew/supertab'
"Plug 'mileszs/ack.vim'
"Plug 'romainl/flattened'
call plug#end()

"  defaults and Key Mappings
exe 'source ' . s:path . '/caneovim/defaults.vim'
exe 'source ' . s:path . '/caneovim/mappings.vim'
