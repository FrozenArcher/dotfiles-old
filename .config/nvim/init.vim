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
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'navarasu/onedark.nvim'
Plug 'glepnir/dashboard-nvim'
Plug 'liuchengxu/vim-clap'
Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'SmiteshP/nvim-gps'
Plug 'mfussenegger/nvim-dap'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'lewis6991/gitsigns.nvim'
Plug 'LoricAndre/OneTerm.nvim'
Plug 'lewis6991/spellsitter.nvim'
Plug 'ray-x/go.nvim'
Plug 'ellisonleao/glow.nvim'
Plug 'numToStr/FTerm.nvim'
call plug#end()

" global variables
let g:nvim_tree_git_hl = 1

" set onedark colorscheme
let g:onedark_config = {
    \ 'style': 'dark',
\}
colorscheme onedark

" gofmt
autocmd BufWritePre *.go :silent! lua require('go.format').goimport()

" complex setups for plugins
lua require('barbar-cfg')
lua require('nvim-tree-cfg')
lua require('galaxy-cfg')
lua require('treesitter-cfg')
lua require('fterm-cfg')

" breif setups for plugins
lua require('colorizer').setup()
lua require('gitsigns').setup()
lua require('spellsitter').setup()
lua require('go').setup()
