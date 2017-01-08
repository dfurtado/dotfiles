
set background=dark

colorscheme lyla

set tabstop=4

set shiftwidth=4

set softtabstop=4

set autoindent

set number

set smarttab

set expandtab

set cursorline

set timeoutlen=1000 ttimeoutlen=0

set noshowmode

set noruler

set laststatus=2

execute pathogen#infect()
syntax on

if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=/home/daniel/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('/home/daniel/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'bling/vim-airline'
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'edkolev/tmuxline.vim'
NeoBundle 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'asciidoc/vim-asciidoc'
NeoBundle 'morhetz/gruvbox'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_powerline_fonts = 1
let g:airline_theme = 'gruvbox'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|\v[\/](node_modules)$',
  \ 'file': '\v\.(exe|so|dll|swp|pyc|o)$',
  \ }

let g:move_key_modifier = 'C'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

"toggle the file tree.
map <C-n> :NERDTreeTabsToggle<CR>

"list the active buffers.
nnoremap <F5> :buffers<CR>:buffer<Space>

"remove all the trailing spaces.
nnoremap <silent> <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
