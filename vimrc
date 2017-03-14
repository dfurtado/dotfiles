
set background=dark

colorscheme skittles_berry 

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
NeoBundle 'vim-scripts/SyntaxRange'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'vim-scripts/ingo-library'
NeoBundle 'dracula/vim'

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
let g:airline_theme = 'tomorrow'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$|\v[\/](node_modules)|\v[\/](bower_components)',
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

" BufOnly.vim  -  Delete all the buffers except the current/named buffer.
"
" Copyright November 2003 by Christian J. Robinson <infynity@onewest.net>
"
" Distributed under the terms of the Vim license.  See ":help license".
"
" Usage:
"
" :Bonly / :BOnly / :Bufonly / :BufOnly [buffer]
"
" Without any arguments the current buffer is kept.  With an argument the
" buffer name/number supplied is kept.

command! -nargs=? -complete=buffer -bang Bonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BOnly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang Bufonly
    \ :call BufOnly('<args>', '<bang>')
command! -nargs=? -complete=buffer -bang BufOnly
    \ :call BufOnly('<args>', '<bang>')

function! BufOnly(buffer, bang)
	if a:buffer == ''
		" No buffer provided, use the current buffer.
		let buffer = bufnr('%')
	elseif (a:buffer + 0) > 0
		" A buffer number was provided.
		let buffer = bufnr(a:buffer + 0)
	else
		" A buffer name was provided.
		let buffer = bufnr(a:buffer)
	endif

	if buffer == -1
		echohl ErrorMsg
		echomsg "No matching buffer for" a:buffer
		echohl None
		return
	endif

	let last_buffer = bufnr('$')

	let delete_count = 0
	let n = 1
	while n <= last_buffer
		if n != buffer && buflisted(n)
			if a:bang == '' && getbufvar(n, '&modified')
				echohl ErrorMsg
				echomsg 'No write since last change for buffer'
							\ n '(add ! to override)'
				echohl None
			else
				silent exe 'bdel' . a:bang . ' ' . n
				if ! buflisted(n)
					let delete_count = delete_count+1
				endif
			endif
		endif
		let n = n+1
	endwhile

	if delete_count == 1
		echomsg delete_count "buffer deleted"
	elseif delete_count > 1
		echomsg delete_count "buffers deleted"
	endif

endfunction

"list the active buffers.
nnoremap <F2> :Bonly<CR>


