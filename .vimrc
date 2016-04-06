" vim-plug
call plug#begin()
Plug 'chriskempson/base16-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'osyo-manga/vim-over'
call plug#end()

" leader
let mapleader="\<space>"

" plugin settings
colorscheme base16-default
nnoremap <leader>p :CtrlPBuffer<cr>
let g:syntastic_python_checkers=['flake8']
let g:syntastic_always_populate_loc_list=1
map <tab> <Plug>(easymotion-prefix)
" map <s-tab>
" map <leader><tab>
let g:EasyMotion_smartcase=1
nnoremap <leader>s :OverCommandLine<cr>%s/
nnoremap <leader>S :OverCommandLine<cr>s/

" options
syntax on
filetype plugin indent on
set title
set number
set incsearch
set hlsearch
set ignorecase
set smartcase
set showcmd
set wildmenu
set wildmode=list:longest,list:full
set hidden
set background=dark
autocmd CompleteDone * pclose

" escape
" inoremap jk <esc>
" inoremap kj <esc>
nnoremap <leader><esc> :noh<cr>

" operations
nnoremap <leader>/ *
nnoremap <leader>? #
nnoremap <cr> :
" nnoremap <leader><cr>
nnoremap <leader>A ggVG
" nnoremap <leader>a

" buffers
nnoremap <bs> :b#<cr>
" nnoremap <leader><bs>
nnoremap \ :bd<cr>
nnoremap <leader>\ :bd!<cr>
" nnoremap <leader>|

" windows
nnoremap <down> <c-w>s
nnoremap <right> <c-w>v

" nnoremap <left> <c-w>h
" nnoremap <down> <c-w>j
" nnoremap <up> <c-w>k
" nnoremap <right> <c-w>l
" nnoremap <s-left> <c-w>H
" nnoremap <s-down> <c-w>J
" nnoremap <s-up> <c-w>K
" nnoremap <s-right> <c-w>L
" nnoremap <c-down> <c-w>s
" nnoremap <c-right> <c-w>v
" nnoremap <c-left>
" nnoremap <c-up>
