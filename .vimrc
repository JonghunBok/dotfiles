set encoding=utf-8              " be iMproved, required
set nocompatible              " be iMproved, required
set background=dark

call plug#begin('~/.vim/plugged')
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plug 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'digitaltoad/vim-pug'
Plug 'briancollins/vim-jst'
Plug 'quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'dylanaraps/wal.vim'
Plug 'junegunn/goyo.vim'
" All of your Plugins must be added before the following line
call plug#end()
"
" Enable emmet-vim just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css,js,vue,ejs EmmetInstall

set smartindent
set tabstop=2
set expandtab
set shiftwidth=2

"set number relativenumber

"augroup numbertoggle
    "autocmd!
      "autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
        "autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
      "augroup END
"

nnoremap <C-j>  ddp
nnoremap <C-k>  ddkkp
inoremap <C-j>  <ESC>ddp
inoremap <C-k>  <ESC>ddkkp

noremap <F2> :set hlsearch!<cr>
noremap <F3> <C-w>
noremap <F4> <ESC>:NERDTreeToggle<cr>
noremap <F5> <ESC>:set nu!<cr>
noremap <F6> <ESC>:Goyo<cr>

inoremap <C-t> &nbsp;

inoremap <C-h> <C-y>,
inoremap <Tab> <C-P>


let g:NERDTreeNodeDelimiter = "\u00a0"

colorscheme wal

set ignorecase
set showcmd
set pastetoggle=<F2>
set langmap=ㅁa,ㅠb,ㅊc,ㅇd,ㄷe,ㄹf,ㅎg,ㅗh,ㅑi,ㅓj,ㅏk,ㅣl,ㅡm,ㅜn,ㅐo,ㅔp,ㅂq,ㄱr,ㄴs,ㅅt,ㅕu,ㅍv,ㅈw,ㅌx,ㅛy,ㅋz

set noimd
set imi=1
set ims=-1




" tiddlywiki things
au BufRead,BufNewFile *.tid set filetype=tid
au! Syntax tid source ~/.vim/syntax/tid.vim
syntax on
" tiddlywiki
" k
nnoremap ;cp :!cat "%" \| xclip -selection c<cr><cr>
  
" Problem Solving 
autocmd BufNewFile */ProblemSolving/*.cpp 0r ~/.vim/templates/problem_solving.cpp
autocmd Filetype cpp nnoremap ;test :!g++ -g "%" && time ./a.out < input.txt<cr>
autocmd Filetype cpp nnoremap ;tt :!g++ -g "%" && time ./a.out<cr>
autocmd Filetype cpp nnoremap ;db :!g++ -g "%" && gdb ./a.out<cr>
autocmd Filetype cpp inoremap ;forin for (int i = 0; i < n; i++)
autocmd Filetype cpp inoremap ;foriN for (int i = 0; i < N; i++)
autocmd Filetype cpp inoremap ;forjn for (int j = 0; j < n; j++)
autocmd Filetype cpp inoremap ;forjN for (int j = 0; j < N; j++)
"

" My notetaking 
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd FileType markdown nnoremap ;note gg:r!cat ~/.vim/templates/note_taking.md<cr>
autocmd FileType markdown nnoremap <C-p> :!md2pdf.sh --show "%" "%:r"<cr>
autocmd FileType markdown nnoremap <C-P> :!md2pdf.sh --show -p "%" "%:r"<cr>
autocmd FileType markdown inoremap <C-b> ****<ESC>hi
autocmd FileType markdown nnoremap <C-b> I**<ESC>A**<ESC>
autocmd FileType markdown inoremap ;cb \columnbreak<cr>
autocmd FileType markdown nnoremap ;cb i\columnbreak<cr><ESC>
autocmd FileType markdown inoremap ;mc <ESC>o\Begin{multicols}{2}<cr>\End{multicols}<ESC>O\columnbreak<ESC>O
autocmd FileType markdown nnoremap ;mc <ESC>o\Begin{multicols}{2}<cr>\End{multicols}<ESC>O\columnbreak<ESC>
"
