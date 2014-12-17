set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'techlivezheng/vim-plugin-minibufexpl'

Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'wookiehangover/jshint.vim'
Plugin 'elzr/vim-json'

Plugin 'digitaltoad/vim-jade'

Plugin 'valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'

Plugin 'chrisbra/csv.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Get path to .vimrc
let s:vimrc_path = join(split($MYVIMRC, '\.vimrc')[0:-1])
" Look for a file called .vimrc_local in path for .vimrc
let s:vimrc_local_path = s:vimrc_path . '.vimrc_local'

" If that file exists, source it.
if filereadable(s:vimrc_local_path)
    execute 'source ' . s:vimrc_local_path
endif

syntax enable

set clipboard=unnamed
set scrolloff=10

set foldmethod=syntax
set nofoldenable

set autoread    " Auto-reload changed file

set hidden	" Allow hidden buffers
set relativenumber " Relative line numbers
set ruler	" Column number and such
set colorcolumn=100

set ignorecase
set smartcase

nnoremap <Leader>ta :TlistToggle<CR>

nnoremap <Leader>q :qa!<CR>

" Superuser write
cnoremap w!! w !sudo dd of=%

" Fix backspace
set backspace=indent,eol,start

" Mappings
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap ; :
nnoremap ;;; ;
nnoremap : <nop>    " Disable colon

inoremap jk <esc>

"" Errors
nnoremap <leader>en :cnext<cr>
nnoremap <leader>ep :cprevious<cr>

"" Explore
nnoremap <leader>ew :Explore<cr>

"" Editing
nnoremap <leader>pl ^d$<esc>k$p
nnoremap <leader>nl d$<esc>o<esc>p

"" Buffers
nnoremap <leader>w :w<cr>

"" togglelist plugin
let g:toggle_list_no_mappings = 1
nnoremap <script> <silent> <leader>tl :call ToggleLocationList()<CR>
nnoremap <script> <silent> <leader>tq :call ToggleQuickfixList()<CR>

" Tags
set tags=./.tags;,~/.vimtags

" Extend path for navigating classes in large projects.
set path=**

" Defaults
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

inoremap ;; <end>;

nnoremap <space> :nohlsearch<cr>

let delimitMate_matchpairs = "(:),[:]"

let g:localvimrc_sandbox = 0

nnoremap <Leader>me :MBEOpen<cr>
nnoremap <Leader>mc :MBEClose<cr>
nnoremap <Leader>mt :MBEToggle<cr>

