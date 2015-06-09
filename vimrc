" Cactus' Vim config
" Thank you Gary Bernhardt @ destroyallsoftware.com for many vim config tips
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible        " set noncompatible with vi
set background=dark     " tell vim your terminal is set to a dark scheme
set t_Co=256            " enable 256 colors
colorscheme grb256      " color scheme choice, located in colors folder
syntax on               " enable syntax highlighting
set pastetoggle=<F2>    " set f2 to toggle paste mode
set showcmd		" render incomplete commands in command window
filetype plugin indent on
" map jk to escape insert (escape is akward)
inoremap jk <esc>
set nomodeline          " mostly unnecessary
" Do case insensitive matching unless uppercase
set ignorecase smartcase
" lets backspace delete over indents, and breaks
set backspace=indent,eol,start
set autoindent          " enable auto indent
set ruler               " enables ruler on bottom right
set confirm             " confirm pront on :q if unsaved
set visualbell          " visual bell instead of audio
set cmdheight=2         " set the command field to 2 lineheight
set number              " show line numbers
set shiftwidth=2        " sets reindent >> and << commands to two spaces
set softtabstop=2       " set tab to 2x spaces
set expandtab           " converts tab inputs to spaces
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes) JUST IN CASE right?
set colorcolumn=81      " sets a column to mark the 81st character in a line
set hlsearch            " highlight all search patterns
set incsearch           " incremental search
set showmatch           " shows matching braces for sets when highlighted
set cursorline          " highlight line cursor is on
set showtabline=2       " only show tabline if >2 tabs present
set laststatus=2        " always display status line
set shell=bash          " This makes RVM work inside Vim. I have no idea why.
" use emacs-style tab completion when selecting files, etc
set wildmode=longest,list
" make tab completion for files/buffers act like bash
set wildmenu
let mapleader=","       " set , to be the <leader> value for commands
set switchbuf=useopen   " tell vim to use the existing open buffer if available
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" keep more context when scrolling off the end of a buffer
set scrolloff=3
set nostartofline      " save cursor spot on line when switching buffers
" Insert only one space when joining lines that contain sentence-terminating
" punctuation like `.`.
set nojoinspaces
" If a file is changed outside of vim, automatically reload it without asking
set autoread

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |
        \ exe "normal! g'\"" |
        \ endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY - Taken directly from Gary Bernhardt's vimrc
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE - from Gary's vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE - from Gary's vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap <expr> %% expand('%:h').'/'
map <leader>e :edit %%
map <leader>v :view %%

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE - from Gary's vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" InsertTime COMMAND - from Gary's vimrc
" Insert the current time
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! InsertTime :normal a<c-r>=strftime('%F %H:%M:%S.0 %z')<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DEFAULT VIM LEFTOVER STUFF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set autowrite		" Automatically save before commands like :next and :make

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

