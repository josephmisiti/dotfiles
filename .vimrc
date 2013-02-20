
set runtimepath^=~/.vim/bundle/ctrlp.vim

" http://stevelosh.com/blog/2010/09/coming-home-to-vim/

set nocompatible        " Use Vim settings, rather then Vi settings
set nowritebackup       " Do not save swap files
set nobackup            " Do not save swap files
set history=50          " Save 50 comamnds max ..
set tabstop=4           " When I hit tab, save 4 spaces 
set shiftwidth=4        " Use 4 spaces when auto-indenting something
set smarttab            " Vim, please be smart about my tabs/indentations in code
set expandtab           " All the new tab characters entered will be changed to spaces
set softtabstop=4       " Makes the spaces feel like real tabs
set autoindent          " Copy indentations from pervious line, mother fucker
set nocompatible        " We do not need to be vi compatible anymore 
set modelines=0         " Prevents some security exploits having to do with modelines
set encoding=utf-8      " Use UTF-8
set scrolloff=5         " Make sure there are always 5 lines above the cursor before scroll
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set wrap
set textwidth=79
set formatoptions=qrn1

" Tame Searching & Moving

nnoremap / /\v          
vnoremap / /\v          
set ignorecase          " Deal with case-sensitive searching intelligently 
set smartcase           " Deal with case-sensitive searching intelligently
set gdefault            " Apply substituions globally on lines
set incsearch           " Highlight search results
set showmatch           " Highlight search results
set hlsearch            " Highlight search results
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %


" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
    syntax on
endif

if has('gui_running')
    set guifont=Menlo\ Regular\ for\ Powerline:h12
endif


