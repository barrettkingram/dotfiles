" Enable Ruby Extensions
set nocompatible      " We're running Vim, not Vi!

syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" Enable file line statistics
set ruler

" Enable mouse
set mouse=a

" Enable backspacing new line characters
set backspace=indent,eol,start

" Enable line numbers
set number

" Set window width to 100 instead of default of 80
set textwidth=99

" Use spaces instead of tabs
set shiftwidth=2 tabstop=2 expandtab

" Ruby options
autocmd BufRead,BufNewFile *.rb,*.thor,*.rl,Thorfile,Gemfile,.simplecov set filetype=ruby

autocmd BufRead,BufNewFile *.mjml set filetype=html

" Ctags options for vim-rails
let g:rails_ctags_arguments = ['--languages=Ruby', 'app', 'test', 'lib', 'script']

" Dash Plugin Mapping
nmap <silent> <F2> <Plug>DashGlobalSearch

" Markdown formatting
autocmd BufRead,BufNewFile *.md set textwidth=80 shiftwidth=2 tabstop=2 expandtab autoindent

" Copy name of current file to clipboard with \cf
nnoremap <leader>cf :let @*=expand("%")<CR>

" CtrlSF Plugin Mappings
nmap     <C-G>f <Plug>CtrlSFPrompt
vmap     <C-G>f <Plug>CtrlSFVwordPath
vmap     <C-G>F <Plug>CtrlSFVwordExec
nmap     <C-G>n <Plug>CtrlSFCwordPath
nmap     <C-G>p <Plug>CtrlSFPwordPath
nnoremap <C-G>o :CtrlSFOpen<CR>
nnoremap <C-G>t :CtrlSFToggle<CR>
inoremap <C-G>t <Esc>:CtrlSFToggle<CR>

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'dyng/ctrlsf.vim'
Plug 'rizzatti/dash.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'godlygeek/tabular'
call plug#end()
