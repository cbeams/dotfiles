" Turn on syntax highlighting
syn on

" Useful options. Type :help <option> for more on any of the following
set novb
set noerrorbells
set bs=2
set magic
set ruler
set incsearch
set hlsearch
set showmode
set showcmd
set showmatch
set laststatus=2
set expandtab    "}
set tabstop=4    "} *The* way to do 4-space tabs.
set shiftwidth=4 "}
set smartindent
set list                     "} show all whitespace
set listchars=tab:»·,trail:· "}

" Type CTRL-N CTRL-N to switch to the previous buffer
map  :b#<CR>

" Turn comments green, rather than difficult-to-see blue
hi Comment term=bold ctermfg=darkgreen  guifg=#80a0ff gui=bold
hi cComment term=bold ctermfg=darkcyan  guifg=#80a0ff gui=bold

" Make highly-visible any words being searched for in a file. Corresponds with
" the use of 'set incsearch' and 'set hlsearch' below
hi Search  ctermbg=3 ctermfg=0 term=reverse

" Determines the look of the status line at bottom
hi StatusLine cterm=bold ctermfg=red ctermbg=blue

" see :help folding for info on the following
hi Folded term=standout ctermfg=5 ctermbg=0

" See http://www.codeography.com/2010/02/20/making-vim-play-nice-with-jekylls-yaml-front-matter.html
autocmd BufNewFile,BufRead *.md syntax match Comment /\%^---\_.\{-}---$/
