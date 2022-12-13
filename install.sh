OSdetect='uname -a'
if [[ $($OSdetect) == *"Darwin"* ]]; then 
	echo "--- Installing for mac ---"
	echo "--- Installing Brew ---"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo "--- Installing ZSH ---"
	brew install zsh
	echo "--- Installing iTerm2 ---"
	brew install iterm2
	echo "--- Installing GIT ---"
	brew install git
	echo "--- Downloading repo ---"
        git clone https://github.com/rodoscodos/terminal-config.git
	cd terminal-config
	echo "--- Installing tmux-config ---"
	./tmux-config/install.sh
	echo "--- Cleaning up ---"
	cd ..
	rm -r terminal-config
	echo "--- Installing oh-my-zsh ---"
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	
else
	echo "--- Installing for Linux ---"
	echo "--- Installing ZSH ---"
	sudo apt install -y zsh
        echo "--- Installing GIT ---"
	sudo apt install -y git
	echo "--- Downloading repo ---"
	git clone https://github.com/rodoscodos/terminal-config.git
	cd terminal-config
	echo "--- Installing tmux-config ---"
        ./tmux-config/install.sh
	echo "--- Cleaning up ---"
	cd ..
	rm -r terminal-config
	echo "--- Installing oh-my-zsh ---"
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	
fi
