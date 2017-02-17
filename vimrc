set tabstop=2
set shiftwidth=2
set expandtab
syntax on

set autoindent
set cindent

autocmd FileType make setlocal noexpandtab

call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'rhysd/vim-clang-format'
Plug 'honza/vim-snippets'
Plug 'vhdirk/vim-cmake'

call plug#end()

let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

autocmd BufWritePre *.h :ClangFormat
autocmd BufWritePre *.c :ClangFormat
autocmd BufWritePre *.cpp :ClangFormat

let g:clang_format#code_style="google"
