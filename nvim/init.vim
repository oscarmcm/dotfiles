source $HOME/.config/nvim/vim-plug/plugins.vim

if has('nvim')
	lua require('catppuccin-theme')
endif

colorscheme catppuccin

if has('nvim')
  lua require('treesitter')
endif

" Color ¿?
" set termguicolors

" 'Cuz you know
set mouse+=a

" ########################
" #   NVIM-TREE CONFIG   #
" https://github.com/kyazdani42/nvim-tree.lua

"0 by default, closes the tree when you open a file
let g:nvim_tree_quit_on_open = 1 
"0 by default, this option shows indent markers when folders are open
let g:nvim_tree_indent_markers = 1 
"0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_git_hl = 1 
"0 by default, will enable folder and file icon highlight for opened files/directories.
let g:nvim_tree_highlight_opened_files = 1 
"This is the default. See :help filename-modifiers for more options
let g:nvim_tree_root_folder_modifier = ':~' 
"0 by default, append a trailing slash to folder names
let g:nvim_tree_add_trailing = 1 
" 0 by default, compact folders that only contain a single folder into one node in the file tree
let g:nvim_tree_group_empty = 1 
"0 by default, will disable the window picker.
let g:nvim_tree_disable_window_picker = 1 
"one space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.
let g:nvim_tree_icon_padding = ' ' 
" defaults to ' ➛ '. used as a separator between symlinks' source and target.
let g:nvim_tree_symlink_arrow = ' >> ' 
"0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.
let g:nvim_tree_respect_buf_cwd = 1 
"1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.
let g:nvim_tree_create_in_closed_folder = 0 
"1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.
let g:nvim_tree_refresh_wait = 500 
" Dictionary of buffer option names mapped to a list of option values that
" indicates to the window picker that the buffer's window should not be
" selectable.
let g:nvim_tree_window_picker_exclude = {
    \   'filetype': [
    \     'notify',
    \     'packer',
    \     'qf'
    \   ],
    \   'buftype': [
    \     'terminal'
    \   ]
    \ }
" List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 }
"If 0, do not show the icons for one of 'git' 'folder' and 'files'
"1 by default, notice that if 'files' is 1, it will only display
"if nvim-web-devicons is installed and on your runtimepath.
"if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
"but this will not work when you set indent_markers (because of UI conflict)
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 0,
    \ 'files': 0,
    \ 'folder_arrows': 0,
    \ }
" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   }
    \ }

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen, NvimTreeClose, NvimTreeFocus, NvimTreeFindFileToggle, and NvimTreeResize are also available if you need them

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

if has('nvim')
  lua require('ntree')
endif


" #######################
" #    BAR BAR CONFIG   #
" https://github.com/romgrk/barbar.nvim

" Move to previous/next
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <A-p> :BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseAllButPinned<CR>
"                          :BufferCloseBuffersLeft<CR>
"                          :BufferCloseBuffersRight<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-s>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bb :BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw :BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used

if has('nvim')
  lua require('barbar')
endif


" ########################
" #   TELESCOPE CONFIG   #
" https://github.com/nvim-telescope/telescope.nvim
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" ########################
" #   DASHBOARD CONFIG   #
" https://github.com/glepnir/dashboard-nvim
let g:dashboard_default_executive = 'telescope'
let g:dashboard_custom_header = [
    \'        ▄█          █          █▄          ',
    \'      ▐██      ▄█  ███  █▄      ██▌        ',
    \'     ▐██▌     ██████████████     ▐██▌      ',
    \'    ████     ████████████████    ████      ',
    \'    ▐█████  ██████████████████  █████▌     ',
    \'    ████████████████████████████████       ',
    \'     ███████▀▀████████████▀▀███████        ',
    \'      █████▌  ▄▄ ▀████▀ ▄▄  ▐█████         ',
    \'    ▄▄██████▄ ▀▀  ████  ▀▀ ▄██████▄▄       ',
    \'    ██████████████████████████████████     ',
    \'  ████████████████████████████████████     ',
    \' ██████   ███████▀▄██▄▀███████   ██████▌   ',
    \'▐█████     ██████████████████      █████▌  ',
    \' ▐█████      ██████▀  ▀██████       █████▌ ',
    \'  █████▄      ███        ███      ▄█████   ',
    \'    ██████     █          █     ██████     ',
    \'     █████                     █████       ',
    \'      █████                   █████        ',
    \'      ████   ▄            ▄    ████        ',
    \'        ████ ██           ██ ████          ',
    \'          ████████ ▄██▄ ████████           ',
    \'         ████████████████████████          ',
    \'         ████████████████████████          ',
    \'          ▀█████████▀▀█████████▀           ',
    \'            ▀███▀       ▀███▀              ',
      \ ]
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nnoremap <silent> <Leader>fh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ff :DashboardFindFile<CR>
nnoremap <silent> <Leader>tc :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>fa :DashboardFindWord<CR>
nnoremap <silent> <Leader>fb :DashboardJumpMark<CR>
nnoremap <silent> <Leader>cn :DashboardNewFile<CR>

