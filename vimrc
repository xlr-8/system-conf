" set t_Co=256
set nocompatible
set backspace=2
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles:
Plugin 'gmarik/vundle'
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'klen/python-mode'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/syntastic'
Plugin 'rodjek/vim-puppet'
Plugin 'vim-ruby/vim-ruby'
Plugin 'godlygeek/tabular'
Plugin 'Shougo/neocomplete'
Plugin 'airblade/vim-gitgutter'

""" Unecessary
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-scripts/mediawiki.vim'
" Plugin 'tpope/vim-rails.git'
" Plugin 'tpope/vim-fugitive'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'rstacruz/sparkup'
" Plugin 'L9'
" Plugin 'FuzzyFinder'

call vundle#end()
filetype plugin indent on

colorscheme jellybeans 
"colorscheme desert 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:gitgutter_realtime = 1 
let g:gitgutter_sign_column_always = 1
