" Formatting
set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
syntax on

set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
" Input
set mouse=a
set backspace=2

" Visual cues
set cursorline
set nu
set relativenumber

" RegEx
set gdefault
set incsearch

" No delay on <Esc>
set timeoutlen=1000
set ttimeoutlen=0

" Theme
let g:molokai_original = 1
let g:rehash256 = 1
colo monokai

" <F5> behavior
au FileType python map <F5> :!clear && python -i %<CR>
au FileType python map <F6> :!clear && python3 -i %<CR>
au FileType tex map <F5> :!clear && pdflatex -shell-escape % && latexmk -c %<CR>
au FileType javascript map <F5> :!clear && node %<CR>

" Open Nerdtree with CTRL + N
map <C-n> :NERDTreeToggle<CR>

" Paste behavior
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Wakatime
let g:wakatime_PythonBinary = '/usr/bin/python2'

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'rhysd/vim-crystal'

call vundle#end()
