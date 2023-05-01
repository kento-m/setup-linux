########################
#
# First
#
########################

first: apt zsh nvim tmux pyenv goenv rust

apt:
	sudo apt update
	sudo apt upgrade

zsh:
	sudo apt install zsh
	chsh -s /bin/zsh
	cp ../dotfiles/.zshrc ~/

nvim:
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
	chmod u+x nvim.appimage
	./nvim.appimage --appimage-extract
	./squashfs-root/AppRun --version
	sudo mv squashfs-root /
	sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
	sh -c "$(wget -O- https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh)"
	cp -r ../dotfiles/nvim ~/.config/
	rm nvim.appimage

tmux:
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	cp ../dotfiles/.tmux.conf ~/

pyenv:
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv
	sed -e 's/#pyenv#//' ~/.zshrc > .zshrc.tmp
	mv .zshrc.tmp ~/.zshrc
	sudo apt install build-essential zlib1g-dev libssl-dev liblzma-dev tk-dev libsqlite3-dev libreadline-dev libffi-dev libbz2-dev

goenv:
	git clone https://github.com/dataich/goenv.git ~/.goenv
	sed -e 's/#goenv#//' ~/.zshrc > .zshrc.tmp
	mv .zshrc.tmp ~/.zshrc

rust:
	curl https://sh.rustup.rs -sSf | sh
	sudo cp ~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/share/zsh/site-functions/_cargo /usr/share/zsh/vendor-completions
	rustup completions zsh > _rustup
	sudo mv _rustup /usr/share/zsh/vendor-completions/_rustup

########################
#
# Second
#
########################

second: pip powerline

pip:
	curl -O https://bootstrap.pypa.io/get-pip.py
	python get-pip.py
	rm get-pip.py

powerline:
	pip install --user powerline-shell
	sed -e 's/#powerline#//' ~/.zshrc > .zshrc.tmp
	mv .zshrc.tmp ~/.zshrc
	source ~/.zshrc
