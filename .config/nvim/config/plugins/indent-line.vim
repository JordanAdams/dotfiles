" Allow Vim theme to determine colours
let g:indentLine_setColors = 0

" Sets the indentation character
let g:indentLine_char = '▏'

" Disable in NERDTree and Help
autocmd FileType help,nerdtree IndentLinesDisable
