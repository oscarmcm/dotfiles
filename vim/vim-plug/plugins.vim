if empty(glob('~/.config/vim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/vim/autoload/plug.vim --create-dirs 
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " autocmd VimEnter * PlugInstall
  " autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/vim/autoload/plugged')

    Plug 'preservim/nerdtree'
    Plug 'ervandew/supertab'
    Plug 'preservim/tagbar'
    Plug 'airblade/vim-gitgutter'
    Plug 'elzr/vim-json'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'vim-airline/vim-airline'
    Plug 'morhetz/gruvbox'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'PhilRunninger/nerdtree-buffer-ops'

call plug#end()
