" Vundle stuff
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/omlet.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'wavded/vim-stylus'
Bundle 'hallison/vim-markdown'

filetype plugin indent on

" Style
set nu 
syntax on
set tabstop=2
set expandtab
set shiftwidth=2

" Fuzzyfinder
map ff :FufFile<CR>
map fd :FufDir<CR>

" Window shortcuts
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C->> <C-w>>

" NERDTree!
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

" B/c Ctrl + C or Esc takes too long 
imap jj <ESC>

" Delete the new lines
set backspace=indent,eol,start

" Make the active window more obvious
augroup CursorLineOnlyInActiveWindow
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
	autocmd WinLeave * setlocal nocursorline
augroup END
