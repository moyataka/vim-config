map ; :Files<CR>
map <C-o> :NERDTreeToggle<CR>

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

so ~/.vim/plugins.vim

let g:ycm_filepath_blacklist = {}
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType python     setlocal shiftwidth=4 softtabstop=4 expandtab
