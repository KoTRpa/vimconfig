set nocompatible							" be iMproved, required
filetype off									" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'scrooloose/nerdtree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'msanders/snipmate.vim'
Plugin 'xsbeats/vim-blade'

" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
call vundle#end()
filetype plugin indent on			" required
"
" Brief help
" :PluginList					 - list configured bundles
" :PluginInstall(!)		 - install (update) bundles
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)			 - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.


" Netrw mouse bindings disable
let g:netrw_mousemaps=0


" Clipboard
set clipboard=unnamedplus


" Цветовая схема
colorscheme railscasts2
if has("gui_running")
	set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 12
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

" Statusbar
set laststatus=2

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
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
set smarttab

" Включаем фолдинг (сворачивание участков кода)
set foldenable

" Сворачивание по отступам
set fdm=manual

" Автоматическое открытие сверток при заходе в них
" set foldopen=all

"Автоматическое переключение рабочей папки
set autochdir

" Отключить создание файлов бекапа и свапа
set nobackup
set nowritebackup
set noswapfile

" Airline bar
let g:airline_section_c='%F'
let g:airline_powerline_fonts=1
let g:airline#extensions#syntastic#enabled = 1

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

nmap <F8> :TagbarToggle<CR>

" blade snippets support
autocmd BufRead,BufNewFile *.blade.php set filetype=blade.php.html
