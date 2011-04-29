install: vim vcprompt bash django-bash-completion

vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc

vcprompt:
	mkdir -p ~/bin
	rm -f ~/bin/vcprompt
	ln -s `pwd`/bash/vcprompt ~/bin/vcprompt

bash:
	rm -f ~/.bashrc
	ln -s `pwd`/bash/bashrc ~/.bashrc

django-bash-completion:
	ln -s `pwd`/django/django_bash_completion ~/.django_bash_completion 
