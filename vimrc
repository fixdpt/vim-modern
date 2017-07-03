set tabstop=2
set shiftwidth=2
set noexpandtab
syntax on

set autoindent
set cindent
let &t_Co=256
set term=xterm-256color
set termencoding=utf-8
set encoding=utf-8
set termguicolors
set hidden
set number

autocmd FileType make setlocal noexpandtab

call plug#begin()
Plug 'maralla/completor.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'easymotion/vim-easymotion'
"Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-scripts/LustyExplorer'
Plug 'rhysd/vim-clang-format'
"Plug 'aklt/plantuml-syntax'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

call plug#end()

let mapleader = ";"
nnoremap <Leader>f :FZF<CR>
nnoremap <Leader>e :e 
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>o :only<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>b :LustyBufferExplorer<CR>
nnoremap <C-j> :wincmd j<CR> 
nnoremap <C-k> :wincmd k<CR> 

let g:ackprg = 'ag --vimgrep'

autocmd FileType make setlocal noexpandtab

let g:clang_format#code_style="mozilla"
let g:clang_format#auto_format=1

let g:completor_clang_binary = '/usr/bin/clang'

"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
