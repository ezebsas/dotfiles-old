Vim
===
**This is a guide to succesfully install vim with this configuration**

## Instalation

``` bash
#First install git and vim

sudo apt-get install git

sudo apt-get install vim

#Clone the repo

git clone https://github.com/ezebsas/dot-vimrc ~/.vim

#configuring necessary dotfiles

ln ~/.vim/.vimrc ~/.vimrc

#Install vundle 

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#install all plugins

vim #it gonna be some errors, hit enter until you can write

:PluginInstall

:q

#Ready to go

vim
```
