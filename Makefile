install-mac:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install vim
	brew install tmux
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/dot-files/powerlevel10k
	rm ~/.zshrc
	rm ~/.vimrc
	rm -rf ~/.vim
	rm ~/.tmux.conf
	ln -s "$PWD/zshrc" ~/.zshrc
	ln -s "$PWD/vimrc" ~/.vimrc
	ln -s "$PWD/tmux.conf" ~/.tmux.conf
	ln -s "$PWD/vim/" ~/.vim

install-linux:
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/dot-files/powerlevel10k
	rm ~/.zshrc
	rm ~/.vimrc
	ln -s "$PWD/zshrc" ~/.zshrc
	ln -s "$PWD/vimrc" ~/.vimrc
	ln -s "$PWD/tmux.conf" ~/.tmux.conf
	ln -s "$PWD/vim/" ~/.vim
	sudo apt install vim
	sudo apt install tmux

uninstall:
	rm ~/.zshrc
	rm ~/.vimrc

install-mac-keyboard:
	# Install Keyboard Env Dependencies
	brew tap osx-cross/avr
	brew tap osx-cross/arm
	brew update
	brew install avr-gcc@8
	brew link --force avr-gcc@8
	brew install dfu-programmer
	brew install dfu-util
	brew install arm-gcc-bin@8
	brew link --force arm-gcc-bin@8
	brew install avrdude
