colorscheme darkblue
syntax enable
set background=dark
colorscheme solarized
set shiftwidth=4
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set statusline+=%1*\ %<%F\
set ignorecase
set mouse=a
set paste
map <C-c> "+y<CR>
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
" Status Line {  
        set laststatus=2                             " always show statusbar  
        set statusline=  
        set statusline+=%-10.3n\                     " buffer number  
        set statusline+=%f\                          " filename   
        set statusline+=%h%m%r%w                     " status flags  
        set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
        set statusline+=%=                           " right align remainder  
        set statusline+=0x%-8B                       " character value  
        set statusline+=%-14(%l,%c%V%)               " line, character  
        set statusline+=%<%P                         " file position  
"}
if !&readonly
    autocmd BufWritePost *.go :silent Fmt
endif
set paste
nmap ; :
let mapleader = ","
let g:buffergator_viewport_split_policy = "B"
let g:buffergator_split_size = 8
let g:buffergator_autoexpand_on_split = 0
nmap j gj
nmap k gk
