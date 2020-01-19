cp ~/.vimrc ~/.vim_backup
cp ./vimrc ~/.vimrc
cp ./plugins.vim ~/.vim/plugins.vim
vim +'PlugInstall' +qa
