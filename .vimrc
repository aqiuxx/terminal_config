
" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" 开启文件类型侦测
filetype on

" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $

" 设置快捷键将选中文本块复制到系统剪贴板
vnoremap <Leader>y "+y

" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>

" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>

" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>

" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>



" 依次遍历子窗口
nnoremap nw <C-W><C-W>


" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l

" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h

" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k

" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j

" 定义快捷键在结对符之间跳转
nmap <Leader>M %

" 在子目录搜索文件，*可以匹配
set path+=**
" 按tab键，自动联想
set wildmenu

" 开启实时搜索功能
set incsearch

" 搜索时大小写不敏感
set ignorecase

" 关闭兼容模式
set nocompatible

" vim 自身命令行模式智能补全
set wildmenu

set backspace=2

au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
"Plugin 'lilydjwg/fcitx.vim'
"Plugin 'CodeFalling/fcitx-vim-osx'
Plugin 'CodeFalling/fcitx-remote-for-osx'
Plugin 'kien/ctrlp.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mhinz/vim-startify'


" 插件列表结束
call vundle#end()
filetype plugin indent on
"suan/vim-instant-markdown"
let g:instant_markdown_open_to_the_world = 1
let g:instant_markdown_slow = 1

"suan/vim-instant-markdown"



" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条 
set guioptions-=m
set guioptions-=T


" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 11.5

" 禁止折行
set nowrap

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" 配色方案
"set background=dark
" colorscheme solarized
colorscheme molokai
" colorscheme phd

" 设置状态栏主题风格
" let g:Powerline_colorscheme='solarized256'




" 自适应不同语言的智能缩进 
filetype indent on
" 将制表符扩展为空格 
set expandtab 
" 设置编辑时制表符占用空格数 
set tabstop=4 
" 设置格式化时制表符占用空格数 
set shiftwidth=4 
" 让 vim 把连续数量的空格视为一个制表符 
set softtabstop=4

" 自动缩进 
set autoindent
set smartindent
set showmatch
set cindent

" 基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle


" startify
if isdirectory(expand("~/.vim/bundle/vim-startify"))
    let g:startify_skiplist = [
                \ 'COMMIT_EDITMSG',
                \ $VIMRUNTIME .'/doc',
                \ 'bundle/.*/doc',
                \ ]
endif

"

let g:UltiSnipsSnippetDirectories=["mysnippets"]
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
" let g:UltiSnipsExpandTrigger="ii"
let g:UltiSnipsExpandTrigger="<Leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<Leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<Leader><s-tab>"



" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>


" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
"fun! ToggleFullscreen()
"	call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
"endf
" 全屏开/关快捷键
" map <silent> <F11> :call ToggleFullscreen()<CR>
" 启动 vim 时自动全屏
" autocmd VimEnter * call ToggleFullscreen()


" 让配置变更立即生效
autocmd BufWritePost $HOME/.vimrc source %




" 关闭NERDTree快捷键
map <leader>n :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=31
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="right"
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

filetype plugin on

" " scrooloose/nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1



let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
nnoremap <leader>jc :YcmCompleter GoToDeclaration<CR>
" 只能是 #include 或已打开的文件
nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>

" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_left=1
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <leader>tt :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=24
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
     \ 'ctagstype' : 'c++',
     \ 'kinds'     : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0',
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
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

" <<
" tabular
"nnoremap <leader>j :Tab/
"vnoremap <leader>j :Tab/

" 正向遍历同名标签
nmap <Leader>tn :tnext<CR>
" 反向遍历同名标签
nmap <Leader>tp :tprevious<CR>
" tagbar

nnoremap <Leader>g g<c-]>
vnoremap <Leader>g g<c-]>

" 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"kien/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]\.(git|hg|svn)$', 'file': '\v\.(exe|so|dll)$'}


" 设置环境保存项
set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
" 保存 undo 历史
set undodir=~/.undo_history/
set undofile
" 保存快捷键
map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
" 恢复快捷键
map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>

let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'
set tags=tags;set autochdir
set tags+=/usr/local/include/tags
set tags+=~/.vim/systags
" indexer begin
" 设置插件 indexer 调用 ctags 的参数
" 默认 --c++-kinds=+p+l，重新设置为 --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v
" 默认 --fields=+iaS 不满足 YCM 要求，需改为 --fields=+iaSl
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
" indexer end

" ctrlsf.vim begin
" CtrlSF搜索  
" 默认程序为ACK而不是AG  
let g:ctrlsf_ackprg = 'ag' 
let g:ctrlsf_case_sensitive = 'no'
"使用 Ctrl + f 打开查找   
nmap     <C-F> <Plug>CtrlSFPrompt   
vmap     <C-F>f <Plug>CtrlSFVwordPath   
vmap     <C-F>F <Plug>CtrlSFVwordExec   
nmap     <C-F>n <Plug>CtrlSFCwordPath   
nmap     <C-F>p <Plug>CtrlSFPwordPath   
nnoremap <C-F>o :CtrlSFOpen<CR>  

nnoremap <Leader>sp :CtrlSF<CR>
" ctrlsf.vim end`
"
" easymotion begin 
" let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)
" 忽略大小写
let g:EasyMotion_smartcase = 0
" easymotion end
"

hi comment ctermfg=5

source ~/.vim/mark.vim
