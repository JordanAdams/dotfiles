" Tab - Toggle NERD Tree
nnoremap <expr> <tab> nerdtree#isOpen() && !nerdtree#isCurrentBuffer() ? ':NERDTreeFocus<CR>' : ':NERDTreeToggle<CR>'

" Ctrl+P - Search files (use :GFiles when in a git directory)
nnoremap <expr> <C-p> fugitive#is_git_dir(fugitive#extract_git_dir(getcwd())) ? ':GFiles <CR>' : ':Files <CR>'

" Space - Search buffers
nnoremap <space> :Buffers <CR>

" Ctrl+S - Save
nnoremap <C-s> :w <CR>

" Esc - Remove search highlights
nnoremap <esc> :nohl<CR><esc>

" Ctrl+/ - Toggle commenting a line
nnoremap <C-/> gcc

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
