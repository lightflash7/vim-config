"�Ӳ��
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
"Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer'}
Plug 'tpope/vim-surround' "���Ÿı䣬��˫���ű䵥���� cs �� ��
Plug 'godlygeek/tabular' "����
Plug 'scrooloose/nerdcommenter'  "ע�͹���
Plug 'airblade/vim-gitgutter' "��ʾ��git�洢�ı�� 
call plug#end()


"window�»�������
set noundofile
set nobackup
set noswapfile
"autocmd GUIEnter * simalt ~x   "�������
set encoding=utf-8
" �˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" ��ʾ��Ϣ����
language messages zh_CN.utf-8
set nocompatible 
set backspace=indent,eol,start
set guioptions-=T    "���ع�����
set guioptions-=L " ������������
set guioptions-=r " �����Ҳ������
set guioptions-=b " ���صײ������� 
set guioptions-=m " ���ز˵��� 
winpos 20 500    "���ó�ʼ����λ��
set lines=50 columns=160 "���ó�ʼ�����С
set gcr=a:block-blinkon0 "�����˸�ر�



"����
colorscheme desert 
set guifont=Consolas:h14


"����
set t_Co=256 "��֪��ɫ���ն�֧��256ɫ��
let g:solarized_termcolors=256
colorscheme molokai "������Ϊmolokai
"colorscheme solarized "������Ϊsolarized-light


"���������
"airline

"Nerdtree
autocmd VimEnter * silent NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "��������һ������ֱ���˳�vim
let NERDTreeWinSize=25 "���ô��ڿ��

"Tarbar
nmap <F6> :TagbarToggle<CR>
                            "���ÿ�ݼ�F8�򿪹ر�
let g:tagbar_width = 25   "���ô��ڿ��
let g:tagbar_ctags_bin='D:\yingyong\gvim\ctags58\ctags.exe'   "�ҵ�ctags

"gitgutter
set updatetime=100  "��ʱ100ms��ʾ

"You-complete-me
let g:ycm_global_ycm_extra_conf = 'C:\Users\11450\.vim\plugged\YouCompleteMe\third_party\ycmd\examples\.ycm_extra_conf.py'
let g:ycm_server_python_interpreter='C:\Users\11450\AppData\Local\Programs\Python\Python37\python.exe'
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl,m': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }            "�����ʿ�ʼע�Ͳ��ҿ�������ע��
let g:ycm_seed_identifiers_with_syntax = 1    "����ע��
nnoremap <c-i> :YcmCompleter GoToDeclaration<CR> 
nnoremap <c-o> :YcmCompleter GoToDefinition<CR> 
let g:ycm_collect_identifiers_from_comments_and_strings = 1   "��ע���Ҵ�
let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ "python":1,
            \ "m":1,
			\ }  "ֻҪ����Щ���͵��ļ��Ż�����ycm



"������vim��������
set nu "��ʾ����
set mouse=a "����������
set ignorecase "����ʱ���Դ�Сд
set incsearch "�����������
"colorscheme molokai "������Ϊmolokai
set showcmd  "��ʾδ������� 
set completeopt-=preview
set tabstop=4             "tab����4��
inoremap <C-W> <Esc>:wq<CR>
nnoremap <C-W> <Esc>:wq<CR>

"��ͨģʽ�ര�ڿ����л�
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"����ģʽ�����ƶ�
inoremap <C-H> <LEFT>
inoremap <C-K> <UP>
inoremap <C-J> <DOWN>
inoremap <C-L> <RIGHT>

"�����м����ƶ�
cnoremap <C-H> <LEFT>
cnoremap <C-K> <UP>
cnoremap <C-J> <DOWN>
cnoremap <C-L> <RIGHT>

"���Ӵ�����ҳ��
nnoremap <C-S> :edit D:\yingyong\gvim\Vim\_vimrc<CR>
