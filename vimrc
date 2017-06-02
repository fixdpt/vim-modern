set tabstop=2
set shiftwidth=2
set expandtab
syntax on

set autoindent
set cindent
let &t_Co=256
set term=xterm-256color
set termencoding=utf-8
set encoding=utf-8
set termguicolors

autocmd FileType make setlocal noexpandtab

call plug#begin()
Plug 'maralla/completor.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'romainl/Apprentice'

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

call plug#end()

let mapleader = ";"
nnoremap <Leader>f :FZF<CR>
nnoremap <Leader>e :e 
