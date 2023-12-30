#!/bin/zsh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sed -i '/^ZSH_THEME=/c\ZSH_THEME="powerlevel10k/powerlevel10k"' ~/.zshrc