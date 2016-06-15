set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

" Plugins
Plugin 'airblade/vim-gitgutter'
Plugin 'gmarik/vundle'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'mxw/vim-jsx'
Plugin 'morhetz/gruvbox'
Plugin 'pangloss/vim-javascript'

Plugin 'raimondi/delimitmate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" The plugin declaration will be before this line
filetype plugin indent on

" NerdTree config 'add shortkey to toggle'
map <C-n> :NERDTreeTabsToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set laststatus=2 "always show statusline"
set tabstop=4 "show existing tab with 4 spaces width
set shiftwidth=4 "when indenting with '>', use 4 spaces
set expandtab "on pressing tab, insert 4 spaces
set t_Co=256 "use 256 colours
set number "insert line's number
set incsearch "highlight while searching with / or ?

" vim airline config
let g:airline_theme='simple' 
let g:airline#extensions#syntastic#enabled = 1

" vim-jsx config
let g:jsx_ext_required = 0

" gruvbox config
set background=dark
colorscheme gruvbox

" vim-javascript config
let g:javascript_enable_domhtmlcss = 1
