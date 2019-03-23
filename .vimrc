"添加下面一句话要安装的插件  :source ~/.vimrc  :PlugStatus  :PlugInstall  完成 call plug#begin('~/.vim/plugged') 
"添加要安装的插件
"Plug 'beanworks/vim-phpfmt'

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
"Plug 'jiangmiao/auto-pairs'
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

"fzf模糊搜索
set rtp+=~/.fzf


"插件的配置
"airline

"Nerdtree
autocmd vimenter * NERDTree "开启时自动打开NERDTree(四行)
autocmd VimEnter * NERDTree
wincmd w
autocmd VimEnter * wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "如果是最后一个窗口直接退出vim
let NERDTreeWinSize=20 "设置窗口宽度

"Tarbar
nmap <F8> :TagbarToggle<CR>
                            "设置快捷键F8打开关闭
let g:tagbar_width = 20   "设置窗口宽度

"gitgutter
set updatetime=100  "延时100ms显示

"You-complete-me
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter='/usr/bin/python3'
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
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
			\ }  "只要用这些类型的文件才会启动ycm




"下面是vim基础配置
set nu "显示行数
set mouse=a "允许鼠标操作
set ignorecase "搜索时忽略大小写
set incsearch "边输入边搜索
colorscheme molokai "变主题为molokai
set showcmd  "显示未完成命令 
set completeopt-=preview
set tabstop=4

"F5一键编译
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()    
	exec "w"
       	if &filetype == 'c'
       	exec '!g++ % -o %<' 
	exec '!time ./%<' 
        elseif &filetype == 'cpp'
	exec '!g++ % -o %<' 
	exec '!time ./%<'
        elseif &filetype == 'python' 
	exec '!time python3 %' 
        elseif &filetype == 'sh' :!time bash % 
	endif 
endfunc

"括号匹配
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i

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

"python PE8标准
au BufNewFile,BufRead *.py 
	\ set tabstop=4 | 
	\ set softtabstop=4 | 
	\ set shiftwidth=4 | 
	\ set textwidth=79 | 
	\ set expandtab | 
	\ set autoindent | 
	\ set fileformat=unix

"跳出括号
"inoremap <C-M> <esc>/}<CR><esc>a
