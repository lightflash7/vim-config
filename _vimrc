"加插件
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
"Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer'}
Plug 'tpope/vim-surround' "符号改变，如双引号变单引号 cs “ ‘
Plug 'godlygeek/tabular' "对齐
Plug 'scrooloose/nerdcommenter'  "注释工具
Plug 'airblade/vim-gitgutter' "显示与git存储的变更 
call plug#end()


"window下基础配置
set noundofile
set nobackup
set noswapfile
"autocmd GUIEnter * simalt ~x   "最大化启动
set encoding=utf-8
" 菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 提示信息乱码
language messages zh_CN.utf-8
set nocompatible 
set backspace=indent,eol,start
set guioptions-=T    "隐藏工具栏
set guioptions-=L " 隐藏左侧滚动条
set guioptions-=r " 隐藏右侧滚动条
set guioptions-=b " 隐藏底部滚动条 
set guioptions-=m " 隐藏菜单栏 
winpos 20 500    "设置初始界面位置
set lines=50 columns=160 "设置初始界面大小
set gcr=a:block-blinkon0 "光标闪烁关闭



"字体
colorscheme desert 
set guifont=Consolas:h14


"主题
set t_Co=256 "告知配色，终端支持256色。
let g:solarized_termcolors=256
colorscheme molokai "变主题为molokai
"colorscheme solarized "变主题为solarized-light


"插件的配置
"airline

"Nerdtree
autocmd VimEnter * silent NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "如果是最后一个窗口直接退出vim
let NERDTreeWinSize=25 "设置窗口宽度

"Tarbar
nmap <F6> :TagbarToggle<CR>
                            "设置快捷键F8打开关闭
let g:tagbar_width = 25   "设置窗口宽度
let g:tagbar_ctags_bin='D:\yingyong\gvim\ctags58\ctags.exe'   "找到ctags

"gitgutter
set updatetime=100  "延时100ms显示

"You-complete-me
let g:ycm_global_ycm_extra_conf = 'C:\Users\11450\.vim\plugged\YouCompleteMe\third_party\ycmd\examples\.ycm_extra_conf.py'
let g:ycm_server_python_interpreter='C:\Users\11450\AppData\Local\Programs\Python\Python37\python.exe'
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl,m': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }            "两个词开始注释并且可以语义注释
let g:ycm_seed_identifiers_with_syntax = 1    "语义注释
nnoremap <c-i> :YcmCompleter GoToDeclaration<CR> 
nnoremap <c-o> :YcmCompleter GoToDefinition<CR> 
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "从注释找词
let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ "python":1,
            \ "m":1,
			\ }  "只要用这些类型的文件才会启动ycm



"下面是vim基础配置
set nu "显示行数
set mouse=a "允许鼠标操作
set ignorecase "搜索时忽略大小写
set incsearch "边输入边搜索
"colorscheme molokai "变主题为molokai
set showcmd  "显示未完成命令 
set completeopt-=preview
set tabstop=4             "tab缩进4格
inoremap <C-W> <Esc>:wq<CR>
nnoremap <C-W> <Esc>:wq<CR>

"普通模式多窗口快速切换
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"插入模式键盘移动
inoremap <C-H> <LEFT>
inoremap <C-K> <UP>
inoremap <C-J> <DOWN>
inoremap <C-L> <RIGHT>

"命令行键盘移动
cnoremap <C-H> <LEFT>
cnoremap <C-K> <UP>
cnoremap <C-J> <DOWN>
cnoremap <C-L> <RIGHT>

"增加打开配置页面
nnoremap <C-S> :edit D:\yingyong\gvim\Vim\_vimrc<CR>
