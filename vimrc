set tabstop=2
set shiftwidth=2
set expandtab
syntax on

set autoindent
set cindent

autocmd FileType make setlocal noexpandtab

call plug#begin()
Plug 'rhysd/vim-clang-format'
Plug 'maralla/completor.vim'
Plug 'vhdirk/vim-cmake'
Plug 'vim-scripts/a.vim'
Plug 'prabirshrestha/asyncomplete.vim'

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

call plug#end()

autocmd BufWritePre *.h :ClangFormat
autocmd BufWritePre *.c :ClangFormat
autocmd BufWritePre *.cpp :ClangFormat

let g:clang_format#code_style="google"
