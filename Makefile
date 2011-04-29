install: install-git install-vim install-vcprompt install-bash install-django-bash-completion reminders

install-git:
	@rm -f ~/.gitconfig
	@rm -f ~/.global_ignore
	@cp `pwd`/git/gitconfig ~/.gitconfig
	@ln -s `pwd`/git/global_ignore ~/.global_ignore

install-vim:
	@rm -rf ~/.vim ~/.vimrc
	@ln -s `pwd`/vim ~/.vim
	@ln -s ~/.vim/vimrc ~/.vimrc

install-vcprompt:
	@mkdir -p ~/bin
	@rm -f ~/bin/vcprompt
	@ln -s `pwd`/vcprompt/vcprompt ~/bin/vcprompt

install-bash:
	@rm -f ~/.bashrc
	@ln -s `pwd`/bash/bashrc ~/.bashrc

install-django-bash-completion:
	@rm -f ~/.django_bash_completion
	@ln -s `pwd`/django/django_bash_completion ~/.django_bash_completion 

reminders:
	@echo "installation finished"
	@echo "remember to update .gitconfig email and github token"

