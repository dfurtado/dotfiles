" vimrc to be used on a windows machine


" enable syntax highlighting
syntax enable

" status bar always visible
set laststatus=2

" backspace enabled
set backspace=2

" writing show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

set encoding=utf-8
set runtimepath+=~/.vim/

set guifont=Hack:h11

" ConEmu
" Found at http://stackoverflow.com/questions/20034851/vim-encoding-unicode-in-terminal-under-windows/25073399#25073399
if !empty($CONEMUBUILD)
    set termencoding=utf8
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
endif

if has('gui_running')
    colorscheme Evolution
endif

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1

let g:airline_powerline_fonts = 1
let g:airline_theme = 'laederon'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'


 " My Bundles here:
 NeoBundle 'bling/vim-airline'
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'jistr/vim-nerdtree-tabs'
 NeoBundle 'leafgarland/typescript-vim'
 NeoBundle 'PProvost/vim-ps1'
 NeoBundle 'ctrlpvim/ctrlp.vim'
 NeoBundle 'tpope/vim-markdown'
 NeoBundle 'vim-scripts/SyntaxRange'

 call neobundle#end()

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

 " Required:
 filetype plugin indent on

map <C-n> :NERDTreeTabsToggle<CR>

