let mapleader=","
filetype indent on
set cino={1s:0fst0g-s(s
set autoindent
set shiftwidth=4
set tabstop=4
set smarttab
set smartindent
set textwidth=70
set expandtab
set noeb
set vb t_vb=
syntax on
set t_AB=[4%p1%dm
set t_AF=[3%p1%dm
set t_Co=8
set t_Sb=[4%?%p1%{1}%=%t4%e%p1%{3}%=%t6%e%p1%{4}%=%t1%e%p1%{6}%=%t3%e%p1%d%;m
set t_Sf=[3%?%p1%{1}%=%t4%e%p1%{3}%=%t6%e%p1%{4}%=%t1%e%p1%{6}%=%t3%e%p1%d%;m
hi Comment ctermfg=LightRed
hi Constant ctermfg=green
hi Special ctermfg=green
hi PreProc ctermfg=DarkCyan
hi Number ctermfg=yellow

" Here's nhansen-specific config
set number
if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"Using vim-plug
"Use PlugInstall after adding
"Use PlugClean after removing
call plug#begin( '~/.vim/plugged' )
Plug 'flazz/vim-colorschemes'
Plug 'jlanzarotta/bufexplorer'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-github-dashboard' 
Plug 'scrooloose/nerdtree' 
call plug#end()

" Colors! so very important
set background=dark
colorscheme gruvbox

" Open nerdtree with Ctrl-n
map <C-n> :NERDTreeToggle<CR>

" the following fixes a coloring problem related to a mising termcap
" or something that munges up the interaction between xterm and vim
set t_RV=
