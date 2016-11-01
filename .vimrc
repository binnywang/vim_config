" show line number
set number
" turn off comatiblity to vi
set nocompatible

set tabstop=4
set softtabstop=4
set shiftwidth=4
" convert tab to 4 Space
set expandtab
" set c/c++ indent
set cindent
" hightlight search result
set hlsearch
" highilight while search input
set incsearch
" match parentheses
set showmatch
" vim internal encoding
set encoding=utf-8
" encodings used to recognized file.
set fileencodings=utf-8,gb2312,gb18030,gbk,cp936

syntax on

filetype plugin indent on


" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
" build tags of your own project with Ctrl-F12
 map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview

set t_Co=256
colorscheme molokai
" hilight function name
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2 
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cfunctions ctermfg=81

hi Type ctermfg=118 cterm=none 
hi Structure ctermfg=118 cterm=none
hi Macro ctermfg=161 cterm=bold
hi PreCondit ctermfg=161 cterm=bold
set cursorline

set textwidth=80 
set fo+=t
set wrap linebreak nolist

" doxygen configure
let g:DoxygenToolkit_authorName="binny <wangzaibing@gmail.com>"
let g:DoxygenToolkit_brifTag_funcName="yes"
let g:DoxygenToolkit_commentType="C++"
let g:doxygen_enhanced_color=1
