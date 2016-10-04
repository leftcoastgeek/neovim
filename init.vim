let s:path = expand('<sfile>:p:h')

" NeoVim Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'neomake/neomake'
Plug 'junegunn/vim-easy-align'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'

" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'

" Group dependencies, vim-snippets depends on ultisnips
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

"Plug 'eugen0329/vim-esearch'
"Plug 'lifepillar/vim-solarized8'
"Plug 'othree/yajs.vim'
"Plug 'tpope/vim-sensible'
"Plug 'altercation/vim-colors-solarized'
"Plug 'tpope/vim-fugitive'
"Plug 'valloric/youcompleteme'
"Plug 'pangloss/vim-javascript'
"Plug 'ervandew/supertab'
"Plug 'mileszs/ack.vim'
"Plug 'romainl/flattened'
call plug#end()


"  defaults and Key Mappings
exe 'source ' . s:path . '/caneovim/defaults.vim'
exe 'source ' . s:path . '/caneovim/mappings.vim'

" Airline
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

" Disable netrw /
let g:loaded_netrw        = 1
let g:loaded_netrwPlugin  = 1

" SudoEdit should ask password on terminal only
let g:sudo_no_gui=1

" Theme activation
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" colorscheme gruvbox
" set background=dark

" System clipboard integration
set clipboard=unnamedplus

"
" Other customizations put in any of the below:
" ~/.config/nvim/custom
" ~/.config/nvim/custom/plugins

exe 'source ' . s:path . '/caneovim/plugins/nerdtree.vim'
exe 'source ' . s:path . '/caneovim/plugins/nerdcommenter.vim'
exe 'source ' . s:path . '/caneovim/plugins/ctrlp.vim'
" exe 'source ' . s:path . '/caneovim/plugins/fugitive.vim'
exe 'source ' . s:path . '/caneovim/plugins/neomake.vim'
" exe 'source ' . s:path . '/caneovim/strip-whitespaces.vim'


" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
