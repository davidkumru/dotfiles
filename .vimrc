" vim-plug
call plug#begin()
Plug 'vim-ruby/vim-ruby'
Plug 'nanotech/jellybeans.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'valloric/youcompleteme', { 'do': './install.py --tern-completer' }
Plug 'scrooloose/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'osyo-manga/vim-over'
call plug#end()

" leader
let mapleader="\<space>"

" plugin settings
" set t_Co=256
" set t_ut=
colorscheme jellybeans
nnoremap <leader>p :CtrlPBuffer<cr>
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_ruby_checkers=['rubocop']
let g:syntastic_python_checkers=['flake8']
let g:syntastic_always_populate_loc_list=1
nnoremap <leader>t :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeFind<cr>
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
set ttimeoutlen=0
set tabstop=4
set shiftwidth=4
set expandtab
set pastetoggle=<F10>
" hi MatchParen cterm=underline ctermbg=none ctermfg=none
autocmd CompleteDone * pclose

" escape
" inoremap jk <esc>
" inoremap kj <esc>
nnoremap <leader><esc> :noh<cr>

" operations
nnoremap <leader>/ *
nnoremap <leader>? #
" nnoremap <cr>
" nnoremap <leader><cr>
" nnoremap <leader>a
nnoremap <leader>A ggVG
nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>

" buffers
" nnoremap <bs>
" nnoremap <leader><bs>
nnoremap \ :b#<cr>
" nnoremap <leader>\
" nnoremap |
" nnoremap <leader>|

" windows
nnoremap <leader>j <c-w>s <c-w>j
nnoremap <leader>l <c-w>v <c-w>l
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
