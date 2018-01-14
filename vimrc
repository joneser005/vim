"filetype indent plugin on
set encoding=utf-8
set gdefault
set hidden
set hlsearch
"set incsearch
set laststatus=2
set number
"set relativenumber
set ruler
set showcmd
set showmatch
set showmode
"set spell spelllang=en_us
set tabstop=4
set ttyfast
set visualbell
set wildmenu
set wildmode=list:longest
syntax on

"This removes trailing whitespace, and leaves the cursor location intact:
autocmd BufWritePre *  :call <SID>StripTrailingWhitespaces()

function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
