"Syntax Highlighting
if has("syntax")
	syntax on
endif

set autoindent
set cindent

colo koehler
syntax on

set ts=4
set shiftwidth=4

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set laststatus=2 " 상태바 표시를 항상한다
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

set paste

set mouse=a

set ruler

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

let g:ctrlp_custom_ignore = {
	\ 'dir': '\.git$/|public$\|log$\|tmp$\|vendor$',
	\ 'file': '\v\.(exe|so|dll)$'
\ }

"let delimitMate_expand_cr = 1

" do not remove indent when switching to normal mode
inoremap <CR> <CR>x<BS>
nnoremap o ox<BS>
nnoremap O Ox<BS>

map <Leader>nt <ESC>:NERDTreeToggle<CR>
