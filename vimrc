
colorscheme wasabi256

set tabstop=4
set shiftwidth=4
set softtabstop=4

set smarttab
set expandtab

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

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

set timeoutlen=1000 ttimeoutlen=0

set noshowmode
set noruler
set laststatus=2

let g:airline_powerline_fonts=0
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme                      = 'wombat'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>
