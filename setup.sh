cp ~/.vimrc ~/.vim_backup
cp ./vimrc ~/.vimrc
cp ./plugins.vim ~/.vim/plugins.vim
cp ./tern-project ~/.tern-project
vim +'PlugInstall' +qa
