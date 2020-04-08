install-mac:
	# Install Package Manager
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	# Install oh my zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"	
	# Install Applications
	brew install vim
	brew install tmux
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
	# Install zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/dot-files/powerlevel10k
	# Install fonts
	git clone https://github.com/powerline/fonts.git --depth=1 ./fonts-install
	cd fonts-install
	bash install.sh
	cd ..
	rm -rf fonts-install
	# Make sure files dont already exist
	rm ~/.zshrc
	rm ~/.vimrc
	rm -rf ~/.vim
	rm ~/.tmux.conf
	# Create links
	ln -s "$PWD/zshrc" ~/.zshrc
	ln -s "$PWD/vimrc" ~/.vimrc
	ln -s "$PWD/tmux.conf" ~/.tmux.conf
	ln -s "$PWD/vim/" ~/.vim

install-linux:
	# Create links
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
