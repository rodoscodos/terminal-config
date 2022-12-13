OSdetect='uname -a'
if [[ $($OSdetect) == *"Darwin"* ]]; then 
	echo "--- Installing for mac ---"
	echo "--- Installing Brew ---"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo "--- Installing oh-my-zsh ---"
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	echo "--- Installing tmux-config ---"
	./tmux-config/install.sh
	echo "--- Installing iTerm2 ---"
	brew install iterm2
else
	echo "--- Installing for Linux ---"
        echo "--- Installing oh-my-zsh ---"
        sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
        echo "--- Installing tmux-config ---"
        ./tmux-config/install.sh

fi
