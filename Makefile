install: install-git install-vim install-vcprompt install-bash install-django-bash-completion install-zsh reminders

install-git:
	@rm -f ~/.gitconfig
	@rm -f ~/.global_ignore
	@cp `pwd`/git/gitconfig ~/.gitconfig
	@ln -sf `pwd`/git/global_ignore ~/.global_ignore

install-vim:
	@rm -rf ~/.vim ~/.vimrc
	@ln -sf `pwd`/vim ~/.vim
	@ln -sf ~/.vim/vimrc ~/.vimrc

install-vcprompt:
	@mkdir -p ~/bin
	@rm -f ~/bin/vcprompt
	@ln -sf `pwd`/vcprompt/vcprompt ~/bin/vcprompt

install-bash:
	@rm -f ~/.bashrc
	@ln -sf `pwd`/bash/bashrc ~/.bashrc

install-django-bash-completion:
	@rm -f ~/.django_bash_completion
	@ln -sf `pwd`/django/django_bash_completion ~/.django_bash_completion 

install-zsh:
	@echo "beggining oh-my-zsh installation"
	wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
	@ln -sf `pwd`/zsh/zshrc ~/.zshrc

reminders:
	@echo "installation finished"
	@echo "remember to update .gitconfig email and github token"

