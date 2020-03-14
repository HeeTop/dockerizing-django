# init
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get -y install git
sudo apt-get -y install curl
sudo apt-get -y install vim

# install zsh
sudo apt-get -y install zsh
sudo chsh -s $(which zsh) && zsh

# install oh-my-zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" 

# source ~/.zshrc

# auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# auto jump
# git clone git://github.com/wting/autojump.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/autojump && cd ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/autojump && python3 install.py&& cd

# syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "source ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

# add plugin
echo "plugins=(git zsh-autosuggestions)" >> ${ZDOTDIR:-$HOME}/.zshrc

# theme
echo "ZSH_THEME"="\"agnoster\"" >> ${ZDOTDIR:-$HOME}/.zshrc

# restart shell
source ${ZDOTDIR:-$HOME}/.zshrc
zsh
