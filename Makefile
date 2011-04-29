install: install-vim install-vcprompt install-bash install-django-bash-completion

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

install-vcprompt:
	mkdir -p ~/bin
	rm -f ~/bin/vcprompt
	ln -s `pwd`/vcprompt/vcprompt ~/bin/vcprompt

install-bash:
	rm -f ~/.bashrc
	ln -s `pwd`/bash/bashrc ~/.bashrc

install-django-bash-completion:
	rm -f ~/.django_bash_completion
	ln -s `pwd`/django/django_bash_completion ~/.django_bash_completion 

