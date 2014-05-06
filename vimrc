set nocompatible              " be iMproved, required
filetype off                  " required

set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'scrooloose/nerdtree'
Bundle 'joonty/vim-phpqa'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
Bundle 'amiorin/vim-project'

" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos

filetype plugin indent on     " required
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.





" Clipboard
set clipboard=unnamedplus


" Цветовая схема
colorscheme railscasts2
if has("gui_running")
    set guifont=DejaVu\ Sans\ Mono\ 12
endif

" Поддержка шорткатов при включенной русской локали
set iskeyword=@,a-z,A-Z,48-57,_,128-175,192-255 

" Список используемых кодировок для автоматического их определения
set fileencodings=utf-8,cp1251

" Меню выбора кодировки текста (utf8, cp1251, koi8-r, cp866)
menu Кодировка.utf-8 :e ++enc=utf8 <CR>
menu Кодировка.windows-1251 :e ++enc=cp1251<CR>
menu Кодировка.koi8-r :e ++enc=koi8-r<CR>
menu Кодировка.cp866 :e ++enc=cp866<CR>

" Нумерация строк
set nu

" Включить автоотступы
set autoindent

" Влючить подстветку синтаксиса
syntax on

" Info on bottom corner
set showcmd

" Search options
set hlsearch
set incsearch
set showmatch

" No wrap text
set nowrap

" Highlight cursor line
set cursorline

" Размер отступов
set shiftwidth=4

" Размеры табуляций
set tabstop=4
set softtabstop=4
set smarttab

" Включаем фолдинг (сворачивание участков кода)
set foldenable

" Сворачивание по отступам
set fdm=syntax

" Автоматическое открытие сверток при заходе в них
" set foldopen=all

augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END

"Автоматическое переключение рабочей папки
set autochdir

" Отключить создание файлов бекапа и свапа
set nobackup
set nowritebackup
set noswapfile

" Nerd tree autoload
autocmd vimenter * NERDTree

" Автоматическое закрытие скобок
imap [ []<LEFT>
imap ( ()<LEFT>
imap { {}<LEFT>
nnoremap <Leader>w :w<CR>
vnoremap <Leader>w <Esc>:w<CR>
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>
vnoremap <C-s> <Esc>:w<CR>

" Ctrl-пробел для автодополнения
inoremap <C-space> <C-x><C-o>
map <C-n> :NERDTreeToggle<CR>
" this will help easily open a file on pressing F2 
map <F2> :cd<CR>:FufTaggedFile<CR> 
" this will go to function definition of 
" the current keyword with F3 in a new tab 
map <F3> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" copy all
map <C-a> :%y+<CR>

" PHP code coverage plugin settings
let g:phpqa_messdetector_autorun = 0
let g:phpqa_codesniffer_autorun = 0

" Projects plugin settings settings
let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/
call project#rc("/www")

" Projects
Project 'soneta', 'Soneta'
