git submodule init
git submodule update
if [ -e "~/.vimrc" ]
then 
  rm ~/.vimrc
fi
ln -sf ~/.vim/.vimrc ~/.vimrc  
vim +PluginInstall +qall
~/.vim/bundle/YouCompleteMe/install.sh
