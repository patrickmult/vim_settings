"Cactus' Vim config
"set background=dark
set pastetoggle=<F2>
set showcmd		" Show (partial) command in status line.
colorscheme grb256
syntax on               " enable syntax highlighting
set nocompatible        " set noncompatible with vi
filetype indent plugin on
inoremap jk <esc>
set wildmenu
set nomodeline
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set backspace=indent,eol,start
set autoindent
set ruler
set laststatus=2
set confirm
set visualbell
set cmdheight=2
set number
set shiftwidth=2
set softtabstop=2       " set tab to 2x spaces
set expandtab           " converts tab inputs to spaces
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set colorcolumn=81      " sets a column to mark the 81st character in a line


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
"set showmatch		" Show matching brackets.
"set nostartofline
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

