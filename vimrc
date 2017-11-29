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
set hidden
set number

autocmd FileType make setlocal noexpandtab

call plug#begin()
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'easymotion/vim-easymotion'
Plug 'uarun/vim-protobuf'
Plug 'rhysd/vim-clang-format'
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ericcurtin/CurtineIncSw.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'haya14busa/incsearch.vim'
Plug 'godlygeek/tabular'
Plug 'stoklund/dot-vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'rust-lang/rust.vim'
Plug 'cespare/vim-toml'
Plug 'wannesm/wmgraphviz.vim'

" make complete colors nicer on the eye for dark background
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#000000 guibg=#efefef

call plug#end()

let mapleader = ";"
nnoremap <Leader>f :FZF<CR>
nnoremap <Leader>e :e 
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>o :only<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>b :BufExplorer<CR>
nnoremap <Leader>m :make<CR>
nnoremap <Leader>a :call CurtineIncSw()<CR>
nnoremap <Leader>t :TagbarOpenAutoClose<CR>
nnoremap <C-j> :wincmd j<CR> 
nnoremap <C-k> :wincmd k<CR> 

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

let g:ackprg = 'ag --vimgrep'

autocmd FileType make setlocal noexpandtab

let g:clang_format#code_style='google'
let g:clang_format#auto_format_on_insert_leave=0
let g:clang_format#auto_formatexpr=1
autocmd FileType c ClangFormatAutoEnable

let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

let g:rustfmt_autosave = 1
