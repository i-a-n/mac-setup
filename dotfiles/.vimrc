" vim recommends this
set nocompatible

" cd into cur directory
" set autochdir

" set workspace
set ruler
set title

" highlight
syntax on
set hlsearch

" i usually don't search case-specifically
set ignorecase
set smartcase

" good for general programming
set autoindent
set smartindent

" generous delete
set backspace=indent,eol,start

" tabs are four spaces, literally
set tabstop=4
set expandtab

" make >> behave
set shiftwidth=4
set shiftround

" only want to wrap perl/php
if has("autocmd")
    autocmd FileType perl,sh set textwidth=78
endif

" pablo's nice
colorscheme pablo

" fix the color scheme. it's ansi, so it sucks,
" but you can jsut set the ansi to sweet
" values if your terminal supports it.
highlight Comment ctermfg=7 cterm=bold
highlight Identifier cterm=none ctermfg=2
highlight Constant ctermfg=7 cterm=none
highlight PreProc cterm=bold
highlight MatchParen ctermbg=1 ctermfg=7

" hate those fucking backup files
set nobackup
set nowritebackup

" lesscss guylighting
au BufNewFile,BufRead *.less set filetype=less

" template toolshit highlighting
au BufNewFile,BufRead *.mt set filetype=html
au BufNewFile,BufRead *.tt set filetype=html

" autosave makefiles
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview
