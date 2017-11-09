call plug#begin()

" Navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'

" Interface
Plug 'itchyny/lightline.vim'

" General
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-commentary'
Plug 'wikitopian/hardmode'
Plug 'kopischke/vim-fetch'

" Motion
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'

" Editing
Plug 'AndrewRadev/splitjoin.vim'
Plug 'machakann/vim-swap' 

" Version Control
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Themes
Plug 'chriskempson/base16-vim'

" Syntax
Plug 'w0rp/ale'
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

call plug#end()

source $HOME/.config/nvim/config/plugins/ack.vim
source $HOME/.config/nvim/config/plugins/nerdtree.vim
source $HOME/.config/nvim/config/plugins/ale.vim
source $HOME/.config/nvim/config/plugins/lightline.vim
