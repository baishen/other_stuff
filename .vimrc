set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" git interface
Plugin 'tpope/vim-fugitive'

" auto complete
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/Pydiction'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Townk/vim-autoclose'

" python syntax checker
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'

" color
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

" file system
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim' 

" html
Plugin 'isnowfy/python-vim-instant-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'nelstrom/vim-markdown-preview'

" powerline
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" code folding
Plugin 'tmhedberg/SimpylFold'

" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

let g:SimpylFold_docstring_preview = 1
let g:ycm_autoclose_preview_window_after_completion=1
let python_highlight_all=1
let g:pydiction_location='/home/baishen/.vim/bundle/Pydiction/complete-dict'
let g:pydiction_menu_height=4

let NERDTreeIgnore=['\.pyc$', '\~$'] 

set noswapfile
set nu
set mouse=a

autocmd FileType python set omnifunc=pythoncomplete#Complete

syntax on
set foldmethod=indent
set foldlevel=99

syntax enable
set background=dark
colorscheme solarized

set backspace=indent,eol,start

nnoremap <space> za
au BufNewFile,BufRead *.py,*pyw,*.c,*.h set tabstop=4 
au BufRead,BufNewFile *.py,*pyw,*.c,*.h,*.cpp,*.cc set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py,*.c,*.h,*.cc set softtabstop=4

highlight BadWhitespace ctermbg=red guibg=red

au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set softtabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

set encoding=utf-8

au VimEnter * NERDTree

autocmd FileType python set autoindent
autocmd FileType python set foldmethod=indent
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
