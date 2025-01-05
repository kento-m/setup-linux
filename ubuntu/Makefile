########################
#
# First
#
########################

first: apt zsh nvim tmux pyenv rust

apt:
	sudo apt update -y
	sudo apt upgrade -y

zsh:
	sudo apt install -y zsh
	chsh -s /bin/zsh
	cp ../dotfiles/.zshrc ~/

nvim:
	curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
	chmod u+x nvim.appimage
	./nvim.appimage --appimage-extract
	./squashfs-root/AppRun --version
	sudo mv squashfs-root /
	sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
	rm nvim.appimage
	mkdir -p ~/.config/nvim/
	cp -r ../dotfiles/nvim ~/.config/nvim/

tmux:
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	cp ../dotfiles/.tmux.conf ~/

pyenv:
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv
	sed -e 's/#pyenv#//' ~/.zshrc > .zshrc.tmp
	mv .zshrc.tmp ~/.zshrc
	sudo apt install -y build-essential zlib1g-dev libssl-dev liblzma-dev tk-dev libsqlite3-dev libreadline-dev libffi-dev libbz2-dev

rust:
	curl https://sh.rustup.rs -sSf | sh
	sudo cp ~/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/share/zsh/site-functions/_cargo /usr/share/zsh/vendor-completions
	~/.cargo/bin/rustup completions zsh > _rustup
	sudo mv _rustup /usr/share/zsh/vendor-completions/_rustup

########################
#
# Second
#
########################

second: go pip powerline

go:
	sed -e 's/#golang#//' ~/.zshrc > .zshrc.tmp
	mv .zshrc.tmp ~/.zshrc

pip:
	curl -O https://bootstrap.pypa.io/get-pip.py
	python get-pip.py
	rm get-pip.py

powerline:
	pip install --user powerline-shell
	sed -e 's/#powerline#//' ~/.zshrc > .zshrc.tmp
	mv .zshrc.tmp ~/.zshrc
