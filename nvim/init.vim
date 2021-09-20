call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-github-dashboard'
Plug 'honza/vim-snippets'
Plug 'fatih/vim-go'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'myusuf3/numbers.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" # appearance
Plug 'ryanoasis/vim-devicons'
Plug 'chriskempson/base16-vim'
Plug 'romainl/Apprentice'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'joshdick/onedark.vim'

call plug#end()

if has('termguicolors')
  set termguicolors
endif

set scrolloff=10

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set t_Co=256

set tabstop=4
set noexpandtab

set splitbelow
set splitright

set relativenumber

set showtabline=2
set noshowmode

syntax enable

set background=dark
"colorscheme onedark

let g:mapleader = ','

" Dracula color scheme
"let g:dracula_colorterm = 0
let g:dracula_italic = 0
colorscheme dracula
"highlight Normal ctermbg=None


" nvim config
let g:loaded_python_provider = 0

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

" remove all the trailing spaces when saving the buffer
autocmd BufWritePre * %s/\s\+$//e

source $HOME/.config/nvim/plugged/config/nerdtree.vim
source $HOME/.config/nvim/plugged/config/airline.vim
source $HOME/.config/nvim/plugged/config/fzf.vim
source $HOME/.config/nvim/plugged/config/coc.vim

