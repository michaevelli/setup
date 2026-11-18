colo ron

" indent automatically depending on filetype
filetype indent on
set autoindent

" set the tab width (for soft tabs)
set tabstop=4
set shiftwidth=4
set softtabstop=4
set modeline
" (hard tabs)
set shiftwidth=4
set tabstop=4

" On pressing tab, insert 4 spaces
"set expandtab

" Turn on the line number
set number

" attempt to determine the type of a file based on its name
filetype plugin indent on
" set syntax on
syntax on

" Case insensitive search
set ic

" wrap text instead of being on one line
"setlbr


set background=light

" Change colorscheme from default to hybrid
"colorscheme delek

" Please Work!!!
"let g:hybrid_custom_term_colors = 1

" Remapping space to : for insert mode
nnoremap <space> :

" Remapping shifttab for command mode
nnoremap <S-Tab> <<
" Remapping shifttab for insert mode
inoremap <S-Tab> <C-d>

" Remapping tab for command mode
nnoremap <Tab> >>

function! s:CloseBracket()
	let line = getline('.')
	if line=~# '^\s*\(struct\}class\}enum\) '
		return "{\<Enter>};\<Esc>O"
	elseif searchpair('(', '', ')', 'bnm', '', line('.'))
		" Probably inside a function call. Close it off.
		return "{\<Enter>});\<Esc>O"
	else
		return "{\<Enter>}\<Esc>O"
	endif
endfunction

inoremap <expr> {<Enter> <SID>CloseBracket()

" Use mouse to navigate and click on text
set mouse=a

" Highlight searches
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
