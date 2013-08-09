let mapleader=","
set shiftwidth=4
set tabstop=4
set hidden
set autoindent
set cc=76

map w <Plug>CamelCaseMotion_w
map b <Plug>CamelCaseMotion_b
map e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

inoremap <C-o> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-o> :call PhpDocSingle()<CR> 
vnoremap <C-o> :call PhpDocRange()<CR> 

map <C-t> :CommandT<CR>
sunmap <C-t>

imap <C-e> <C-y>

colorscheme dark

" set guifont=WenQuanYi\ Micro\ Hei\ Mono\ 11
set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
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

