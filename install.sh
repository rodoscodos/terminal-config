OSdetect='uname -a'
if [[ $($OSdetect) == *"Darwin"* ]]; then 
	echo "--- Installing for mac ---"
	echo "--- Installing Brew ---"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo "--- Installing oh-my-zsh ---"
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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
else
	echo "--- Installing for Linux ---"
        echo "--- Installing oh-my-zsh ---"
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        echo "--- Installing GIT ---"
	apt install -y git
	echo "--- Downloading repo ---"
	git clone https://github.com/rodoscodos/terminal-config.git
	cd terminal-config
	echo "--- Installing tmux-config ---"
        ./tmux-config/install.sh
	echo "--- Cleaning up ---"
	cd ..
	rm -r terminal-config
	
fi
