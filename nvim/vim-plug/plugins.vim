" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " We recommend updating the parsers on update
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " File Explorer
    " Plug 'scrooloose/NERDTree', { 'on': 'NERDTreeToggle' }
    Plug 'kyazdani42/nvim-web-devicons' " for file icons
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'romgrk/barbar.nvim'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    " Theme
    Plug 'catppuccin/nvim', {'as': 'catppuccin'}
    
    " FZF
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    
    " Start Screen
    Plug 'glepnir/dashboard-nvim'
    
    " Focus
    Plug 'junegunn/goyo.vim', { 'for': 'markdown' }
    Plug 'junegunn/limelight.vim', { 'for': 'markdown' }

    autocmd! User goyo.vim echom 'Goyo is now loaded!'
    autocmd! User GoyoEnter Limelight
    autocmd! User GoyoLeave Limelight!

call plug#end()
