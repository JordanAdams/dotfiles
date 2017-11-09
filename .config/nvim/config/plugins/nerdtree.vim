" Hide the help message
let NERDTreeMinimalUI=1

" Opens NERDTree on vim startup
autocmd vimenter * NERDTree

" Checks if NERDTree is open
function! nerdtree#isOpen()
  return exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1
endfunction

" Checks if the current buffer is NERDTree
function! nerdtree#isCurrentBuffer()
  return exists('t:NERDTreeBufName') && bufname('') == t:NERDTreeBufName
endfunction
