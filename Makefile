install-mac:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/dot-files/powerlevel10k
	brew install nvim
	brew unlink vim
	brew install cmake macvim python
	brew install mono go nodejs
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	python3 ~/dot-files/nvim/plugged/YouCompleteMe/install.py --all
	brew install tmux
	rm ~/.zshrc
	rm ~/.tmux.conf

	ln -s "$PWD/powerlevel10k" ~/powerlevel10k
	ln -s "$PWD/zshrc" ~/.zshrc
	ln -s "$PWD/tmux.conf" ~/.tmux.conf
	ln -s "$PWD/init.vim" ~/.config/nvim/init.vim

install-qmk:
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

