" vim-plug
call plug#begin()
Plug 'vim-ruby/vim-ruby'
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
" Plug 'rust-lang/rust.vim'
Plug 'pangloss/vim-javascript'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'
" Plug 'valloric/youcompleteme', { 'do': './install.py --tern-completer' }
Plug 'scrooloose/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'airblade/vim-gitgutter'
Plug 'osyo-manga/vim-over'
Plug 'mileszs/ack.vim'
call plug#end()

" leader
let mapleader="\<space>"

" plugin settings
colorscheme jellybeans
nnoremap <leader>p :CtrlPBuffer<cr>
let g:ctrlp_user_command=['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_ruby_checkers=['rubocop']
let g:syntastic_always_populate_loc_list=1
map <tab> <Plug>(easymotion-prefix)s
map § :Vexplore<cr>
" map ± <tab>s
" map <s-tab>
let g:EasyMotion_smartcase=1
nnoremap <leader>s :OverCommandLine<cr>%s/
nnoremap <leader>S :OverCommandLine<cr>s/
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_tab_type=0
let g:netrw_banner=0
let g:netrw_winsize=20
nnoremap <leader>f :Ack! --elixir 

" options
set guifont=Inconsolata:h16
syntax on
filetype plugin indent on
set title
set number
set backspace=indent,eol,start
set autoread
set cursorline
set scrolloff=1
set incsearch
set hlsearch
set ignorecase
set smartcase
set showcmd
set noshowmode
set wildmenu
set wildmode=list:longest,list:full
set hidden
set ttimeoutlen=0
set laststatus=2
set tabstop=2
set shiftwidth=2
set expandtab
" autocmd CompleteDone * pclose

" escape
nnoremap <leader><esc> :noh<cr>

" operations
nnoremap <leader>/ *
nnoremap <leader>? #
" nnoremap <cr>
" nnoremap <leader><cr>
" nnoremap <leader>a
nnoremap <leader>a ggVG
nnoremap <leader>i gg=G
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>
nnoremap Y y$

" buffers
" nnoremap <bs>
" nnoremap <leader><bs>
nnoremap \ :b#<cr>
nnoremap <left> :bp<cr>
nnoremap <right> :bn<cr>
" nnoremap <leader>\
nnoremap \| :bd<cr>
" nnoremap <leader>\|

" windows
nnoremap ∆ <c-w>s <c-w>j
nnoremap ¬ <c-w>v <c-w>l
" nnoremap <left> <c-w>h
" nnoremap <down> <c-w>j
" nnoremap <up> <c-w>k
" nnoremap <right> <c-w>l
" nnoremap <s-left> <c-w>H
" nnoremap <s-down> <c-w>J
" nnoremap <s-up> <c-w>K
" nnoremap <s-right> <c-w>L
" nnoremap <c-left>
" nnoremap <c-down>
" nnoremap <c-up>
" nnoremap <c-right>
