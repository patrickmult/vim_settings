" Cactus' Vim config
" Thank you Gary Bernhardt @ destroyallsoftware.com for many vim config tips
set background=dark
set t_Co=256            " enable 256 colors
set pastetoggle=<F2>    " set f2 to toggle paste mode
set showcmd		" Show (partial) command in status line.
colorscheme ir_black
syntax on               " enable syntax highlighting
set nocompatible        " set noncompatible with vi
filetype plugin indent on
"map jk to escape insert (escape is akward)
inoremap jk <esc>
set wildmenu
set nomodeline
set ignorecase smartcase  " Do case insensitive matching unless uppercase
set backspace=indent,eol,start
set autoindent
set ruler               " enables ruler on bottom right
set confirm             " confirm pront on :q if unsaved
set visualbell
set cmdheight=2         " set the command field to 2 lineheight
set number              " show line numbers
set shiftwidth=2
set softtabstop=2       " set tab to 2x spaces
set expandtab           " converts tab inputs to spaces
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set colorcolumn=81      " sets a column to mark the 81st character in a line
set hlsearch            " highlight all search patterns
set incsearch           " incremental search
set showmatch
set cursorline          " highlight line cursor is on
set showtabline=2       " only show tabline if >2 tabs present
set laststatus=2        " always display status line
set shell=bash          " This makes RVM work inside Vim. I have no idea why.
" use emacs-style tab completion when selecting files, etc
set wildmode=longest,list
" make tab completion for files/buffers act like bash
set wildmenu
let mapleader=","

" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
"if has("syntax")
"  syntax on
"endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set nostartofline
"set autowrite		" Automatically save before commands like :next and :make

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

