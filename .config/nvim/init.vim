" vim:fileencoding=utf-8:foldmethod=marker

set nu rnu
set termguicolors
set hidden
set nobackup
set updatetime=300
set shortmess+=c
set signcolumn=yes
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab

" VimPlugs
call plug#begin()
" COC!!!
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" web devicons, essential for various visual plugins
Plug 'kyazdani42/nvim-web-devicons'
" the tab bar
"Plug 'romgrk/barbar.nvim'
" the file explorer
Plug 'kyazdani42/nvim-tree.lua'
" onedark color scheme
Plug 'navarasu/onedark.nvim'
" dashboard shown on startup
Plug 'glepnir/dashboard-nvim'
" a file finder for vim
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
" the awesome statusline
Plug 'glepnir/galaxyline.nvim', {'branch': 'main'}
" file highlighter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" showing where you are when programming.
Plug 'SmiteshP/nvim-gps'
" the debug adapter
Plug 'mfussenegger/nvim-dap'
" colorizing colors, e.g.#aaaaaa
Plug 'norcalli/nvim-colorizer.lua'
" showing lines on the left to show git info
Plug 'lewis6991/gitsigns.nvim'
" the floating command runner
Plug 'LoricAndre/OneTerm.nvim'
" golang support
Plug 'ray-x/go.nvim'
" markdown preview
Plug 'ellisonleao/glow.nvim'
" the floating terminal
Plug 'numToStr/FTerm.nvim'
" beautify cursorline
Plug 'yamatsum/nvim-cursorline'
" code formatter
Plug 'mhartington/formatter.nvim'
" kitty config highlighter
Plug 'fladson/vim-kitty'

Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
call plug#end()

" global variables
let g:nvim_tree_git_hl = 1
let g:cursorline_timeout = 800

" set onedark colorscheme
let g:onedark_config = {
    \ 'style': 'dark',
\}
colorscheme onedark

lua require'config'
