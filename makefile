help:
	@echo "install - installs dotfiles"

install: clean vundle vim bashaliases bash vundleplugins
	@echo "installed"

vim:
	@ln -s `pwd`/vimrc ~/.vimrc

bash: 
	@ln -s `pwd`/bashrc ~/.bashrc

bashaliases:
	@ln -s `pwd`/bash_aliases ~/.bash_aliases

vundle:
	@git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vundleplugins:
	@vim +PluginInstall +qall

clean:
	@touch ~/.bashrc && mv ~/.bashrc ~/.bashrc.backup
	@touch ~/.bash_aliases && mv ~/.bash_aliases ~/.bash_aliases.backup
	@rm -rf ~/.vim/bundle/
	@touch ~/.vimrc && mv ~/.vimrc ~/.vimrc.backup