call pathogen#infect()


"设置vundle
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'scrooloose/nerdtree'  "文件浏览
Bundle 'majutsushi/tagbar'    "代码符号
Bundle 'wesleyche/SrcExpl'    "类似sourceInsight的代码预览窗口
filetype plugin indent on     " required!
"vundle设置完毕

set encoding=utf-8
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set number 
set sm "括號配對情況
set selection=inclusive
set wildmenu
set laststatus=2
set confirm
set nocompatible
"不兼容模式 
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 

"powerline{
 set guifont=PowerlineSymbols\ for\ Powerline
 set nocompatible
 set t_Co=256
 let g:Powerline_symbols = 'fancy'
 "}
 
 
" 语法高亮
syntax on

syntax enable

"设置背景色
set background=dark

"colorscheme Tomorrow
"colorscheme solarized
colorscheme desert

" 用浅色高亮当前行
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

" 设置透明度
set transparency=10

"搜索是高亮找到的文本
set hls


set cursorline " 突出显示当前行

set smartindent"智能对齐
set autoindent"自动对齐

vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>
"括号自动生成


map <F7> :if exists("syntax on") <BAR>
\ syntax off <BAR><CR>
\ else <BAR>
\ syntax enable <BAR>
\ endif
"单键F7控制syntax on/off

"map <F3> :NERDTreeToggle<CR> "NERDTree
let mapleader = ","
nmap n :NERDTreeToggle

set noerrorbells"关闭错误信息的铃声

" Tagbar
nnoremap <silent> <F4> :TagbarToggle<CR>

"设置自动换行  
set wrap

"Bundle 'Valloric/YouCompleteMe'
