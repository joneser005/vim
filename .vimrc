"filetype indent plugin on
let mapleader="\\"
set list
set listchars=tab:␉·,trail:·
set encoding=utf-8
set gdefault
set hidden
set hlsearch
set laststatus=2
set number
set ruler
set showcmd
set showmatch
set showmode
set tabstop=4
set ttyfast
set visualbell
set wildmenu
set wildmode=list:longest
syntax on
nnoremap <F2> :<C-U>setlocal lcs=tab:␉·,trail:·,eol:$ list! list? <CR>

"This removes trailing whitespace, and leaves the cursor location intact:
autocmd BufWritePre *  :call <SID>StripTrailingWhitespaces()

function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
