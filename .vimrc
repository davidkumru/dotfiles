" vim-plug
call plug#begin()
Plug 'vim-ruby/vim-ruby'
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'mhinz/vim-mix-format'
Plug 'pangloss/vim-javascript'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-endwise'
Plug 'airblade/vim-gitgutter'
Plug 'osyo-manga/vim-over'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

" leader
let mapleader="\<space>"

" plugin settings
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_ruby_checkers=['rubocop']
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:mix_format_on_save=1
let g:mix_format_silent_errors=1
map <tab> <Plug>(easymotion-prefix)s
let g:EasyMotion_smartcase=1
map § :Vexplore<cr>
" map ± <tab>s
" map <s-tab>
nnoremap <leader>s :OverCommandLine<cr>%s/
nnoremap <leader>S :OverCommandLine<cr>s/
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#show_tab_type=0
let g:netrw_banner=0
let g:netrw_winsize=20
nnoremap <leader>p :GFiles<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>c :BCommits<cr>
nnoremap <leader>f :Ag!

" options
set guifont=Inconsolata:h16
syntax on
filetype plugin indent on
set title
set number
set backspace=indent,eol,start
set autoread
set updatetime=1000
set cursorline
set linespace=6
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
