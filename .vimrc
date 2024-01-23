set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()
let g:NERDTreeGlyphReadOnly = "RO"
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:NERDTreeDirArrowExpandable = "\u27A4"
let g:NERDTreeDirArrowCollapsible = "\u25bc"
let g:NERDTreeDirArrows = 1

set t_Co=256
colorscheme molokai
"set tenc=korea
"set enc=utf-8

set ai
set si
"set paste

set ts=4
set sw=4
set nu
set ic

set expandtab
set tabstop=4
set shiftwidth=4

autocmd FileType make setlocal noexpandtab

set warn
set sm
set ci
"set textwidth=79
"set formatoptions+=t
"set wrap
"set linebreak
"set ruler

syntax on
set ignorecase
set hlsearch

"set wrapmargin=0
"set colorcolumn=-2
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.*/
"-----------------------------------------------------"
" ctags DB path 真
"-----------------------------------------------------"
"set tags=/home/nos/study_kernel_src/linux-2.6.30.4/tags
set tags=./tags;/

"-----------------------------------------------------"
" cscope DB path 真
"-----------------------------------------------------"
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb

"cs add /home/nos/study_kernel_src/linux-2.6.30.4/cscope.out /home/nos/study_kernel_src/linux-2.6.30.4
if filereadable("./cscope.out")       
    cs add cscope.out                 
else                                  
	cs add /home/nos/study_kernel_src/linux-2.6.30.4/cscope.out /home/nos/study_kernel_src/linux-2.6.30.4
endif

function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  endif
endfunction
au BufEnter /* call LoadCscope()

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	

set csverb
"-----------------------------------------------------"
" Tag List 真真
"-----------------------------------------------------"
filetype on
nmap <F7> :TlistToggle<CR>
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0

let Tlist_Auto_Open = 0
let Tlist_Use_Right_Window = 1

"-----------------------------------------------------"
" Source Explorer 真真
"-----------------------------------------------------"
nmap <F8> :SrcExplToggle<CR>
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l 

" // Set the height of Source Explorer window                                  "
let g:SrcExpl_winHeight = 12
"                                                                              "
" // Set 100 ms for refreshing the Source Explorer                             "
let g:SrcExpl_refreshTime = 100
"                                                                              "
" // Set "Enter" key to jump into the exact definition context                 "
let g:SrcExpl_jumpKey = "<ENTER>"
"                                                                              "
" // Set "Space" key for back from the definition context                      "
let g:SrcExpl_gobackKey = "<SPACE>"
"                                                                              "
" // Do not let the Source Explorer update the tags file when opening          "
let g:SrcExpl_isUpdateTags = 0

"-----------------------------------------------------"
" NERD Tree 真真
"-----------------------------------------------------"
let NERDTreeWinPos = "left"
nmap <F9> :NERDTreeToggle<CR>

nnoremap <F11> <C-]>
nnoremap <F12> <C-t>
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

