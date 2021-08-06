map ; :Files<CR>

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>


so ~/.vim/plugins.vim

let g:ycm_filepath_blacklist = {}
set completeopt-=preview

"config indent by filetype
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType rescript setlocal shiftwidth=2 tabstop=2
autocmd FileType rust     setlocal shiftwidth=2 tabstop=2
autocmd FileType json	    setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml 	    setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab 
autocmd FileType python     setlocal shiftwidth=4 softtabstop=4 expandtab

"show line number
set number

"auto close bracket
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"switch pane
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"nerdtree shortcut ,ne
let mapleader = ","
nmap <leader>ne :NERDTree<cr>

"toggle line number
nnoremap <leader>nu :set nu!<CR>

"YouCompleteMe
nnoremap <leader>sgt  :split \| YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>vgt  :vsplit \| YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gt  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"use ; for :GFiles instead of :Files (File ignore gitignored files)
nnoremap ; :GFiles<Cr>

"rescript
autocmd FileType rescript nnoremap <silent> <buffer> <localleader> t :RescriptTypeHint<CR>
autocmd FileType rescript nnoremap <silent> <buffer> <localleader> b :RescriptBuild<CR>
autocmd FileType rescript nnoremap <silent> <buffer> gt :RescriptJumpToDefinition<CR>

"rust
autocmd FileType rust nnoremap <silent> <buffer> <localleader> b :make build<CR>
