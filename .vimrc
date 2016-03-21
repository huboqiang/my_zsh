filetype off

let mapleader=";"

call pathogen#infect()
call pathogen#helptags()


set foldmethod=indent
set foldlevel=99

map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>

syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

let g:pyflakes_use_quickfix = 0

" 配色方案
set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme phd

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu


" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
"set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch
set guifont=Menlo\ for\ Powerline


" 自适应不同语言的智能缩进
filetype indent on
" " 将制表符扩展为空格
set expandtab
" " 设置编辑时制表符占用空格数
set tabstop=4
" " 设置格式化时制表符占用空格数
set shiftwidth=4
" " 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" " 启动 vim 时关闭折叠代码
set nofoldenable

let g:Powerline_colorscheme='solarized256'

let g:pep8_map='<leader>8'

" 使用 ctrlsf.vim 插件在工程内全局查找光标所在关键字，设置快捷键。快捷键速记法：search in project
nnoremap <Leader>sp :CtrlSF<CR>

"au FileType python set omnifunc=pythoncomplete#Complete
"$let g:SuperTabDefaultCompletionType = "context"



set completeopt=menuone,longest,preview
map <leader>n :NERDTreeToggle<CR>

map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>


let g:SuperTabExpandTrigger="<leader><tab>"
let g:SuperTabJumpForwardTrigger="<leader><tab>"
let g:SuperTabJumpBackwardTrigger="<leader><s-tab>"



" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
nnoremap <Leader>tl :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'd:macros:1',
        \ 'g:enums',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
        \ 'l:local:0:0'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

let g:tagbar_type_python = {
    \ 'kinds' : [
        \ 'c:classes',
        \ 'f:functions',
        \ 'm:class members',
        \ 'v:variables:1',
        \ 'i:imports:1'
    \ ]
\ }




nnoremap <silent><F9> :TagbarToggle<cr>
imap <F9> <Esc>:TagbarToggle<cr>
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_indent = 1
let g:tagbar_autoshowtag = 1


" Some Linux distributions set filetype in /etc/vimrc.  
" Clear filetype flags before changing runtimepath to force Vim to reload them.  
if exists("g:did_load_filetypes")  
    filetype off  
    filetype plugin indent off  
endif  
set runtimepath+=$GOROOT/misc/vim " replace $GOROOT with the output of:go env GOROOT  
filetype plugin indent on  
syntax on  
