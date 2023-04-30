
essentials: apt-setup zsh nvim tmux

apt-setup:
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

tmux:
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	cp ../dotfiles/.tmux.conf ~/

