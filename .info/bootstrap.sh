#! /usr/bin/bash

welcome="
Vaimer9 arch install bootstrap script.
This only works on arch.
Artix/Arco/ and all the easy installers should work as well
Yay is required unfortunately
"

function install_dependancies() {
	sudo pacman -Sy git
	sudo pacman -S neovim alacritty zsh awesome JetbrainsMonoNerdFont flameshot 
	yay -S picom-jonaburg-git
}

function clone_repo() {
	git clone https://github.com/vaimer9/dotfiles
	cd dotfiles
}

function copy_files() {
	mkdir ~/test_home/.config
	mv .config/nvim ~/.config/nvim
	mv .config/alacritty ~/.config/alacritty
	mv .config/picom ~/.config/picom
	mv .config/awesome ~/.config/awesome
	mv .zshrc ~/test_home/.zshrc
}

function configure() {
	cd

	# Zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	sudo pacman -S zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME

	# Neovim
	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
}

function thanks() {
	echo "Great! Your machine is all riced up now. Restart your machine and log into awesomewm to see the changes"
	echo "To get the changes in neovim run :PlugInstall and let the git clones complete then restart"
	echo "If you have any questions feel free to message me on discord vλimer9#0976 or send me an email at vaim3r9@gmail.com"
}

if [ $EUID -eq 0 ]
then
	echo "$welcome"
	install_dependancies
	clone_repo

	echo "After this point your current config files will be replaced with the ones from https://github.com/vaimer9/dotfiles"
	printf "Do you want to continue? (y/n): "
	read input

	if [ $input = "y" ]
	then
		copy_files
		configure
	
		## Everything is done at this point, or is it
		printf "Do you want to install vsh? (y/n): "
		read vshinput

		if [ $vshinput = "y" ]
		then
			sudo wget https://github.com/vaimer9/vsh/releases/latest/download/vsh -q -P /bin
			sudo chmod +x /bin/vsh
		fi

		thanks


	elif [ $input = "n" ]
	then
		return 0
	else
		echo "Wrong option"
		return 1
	fi

else
	echo "Please run the script as root"
fi
