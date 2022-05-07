nnoremap <silent> <leader>cl  :Clap   <CR>
nnoremap <silent> <leader>fm  :Format <CR>

" coc-explorer mappings
"nnoremap <silent> <C-n> :CocCommand explorer --toggle <CR>
"nnoremap <silent> <C-b> :CocCommand explorer --focus --no-toggle  <CR>

" FT
nnoremap <silent> <leader>ft :lua require'FTerm'.toggle()<CR>
nnoremap <silent> <leader>fe :lua require'FTerm'.exit()<CR>

" Bufferline
nnoremap <silent> <A-k> :BufferLineCycleNext <CR>
nnoremap <silent> <A-j> :BufferLineCyclePrev <CR>
nnoremap <silent> <A-l> :BufferLineMoveNext <CR>
nnoremap <silent> <A-h> :BufferLineMovePrev <CR>
nnoremap <silent> <A-c> :BufferLinePickClose <CR>
nnoremap <silent> <A-p> :BufferLinePick <CR>
nnoremap <silent> <A-h> :BufferLineMovePrev <CR>

" Tree
nnoremap <silent> <C-n> :NvimTreeToggle<CR>
"nnoremap <silent> <leader>r :NvimTreeRefresh<CR>
nnoremap <silent> <leader>n :NvimTreeFindFile<CR>
" More available functions:
" NvimTreeOpen
"nnoremap <silent> <C-o> :NvimTreeOpen<CR>
" NvimTreeClose
"nnoremap <silent> <C-p> :NvimTreeClose<CR>
" NvimTreeFocus
" NvimTreeFindFileToggle
"nnoremap <silent> <leader>t :NvimTreeFindFileToggle<CR>
" NvimTreeResize
" NvimTreeCollapse
" NvimTreeCollapseKeepBuffers
