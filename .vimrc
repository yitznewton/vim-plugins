let mapleader=","
set shiftwidth=4
set tabstop=4
set expandtab
set hidden
set autoindent
set number
set cc=76

:au FocusLost * :wa

set autowrite

map w <Plug>CamelCaseMotion_w
map b <Plug>CamelCaseMotion_b
map e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

map <M-[> :tabp<CR>
map <M-]> :tabn<CR>

inoremap <C-o> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-o> :call PhpDocSingle()<CR> 
vnoremap <C-o> :call PhpDocRange()<CR> 

imap <C-e> <C-y>

colorscheme dark

" set guifont=WenQuanYi\ Micro\ Hei\ Mono\ 11
" set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
" set guifont=Source\ Code\ Pro\ 11
set guifont=Droid\ Sans\ Mono:h15
set guioptions-=m
set guioptions-=T
set guioptions+=r
set guioptions-=l
set guioptions-=L

let g:NERDTreeWinSize = 25

function! Tabs()
	set noexpandtab
	set tabstop=4
	set shiftwidth=4
endfunction

function! Spaces(n)
	set expandtab
	let &l:tabstop=a:n
	let &l:shiftwidth=a:n
endfunction

command! Tabs call Tabs()
command! -nargs=1 Spaces call Spaces(<f-args>)

let NERDTreeIgnore = ['\.pyc$']

filetype plugin on

