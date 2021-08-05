call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'rust-lang/rust.vim'
Plug 'Valloric/YouCompleteMe', {'do': './install.py --tern-completer --js-completer --rust-completer'}
Plug 'vim-scripts/indentpython.vim'
Plug 'rescript-lang/vim-rescript'

call plug#end()
