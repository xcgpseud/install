echo "Please enter your password"
read -sp pw

here=$PWD

echo -n $pw | sudo -S apt update
echo -n $pw | sudo -S apt install -y vim git docker docker-compose python3 python3-pip python3-testresources composer
echo -n $pw | sudo -S apt update && sudo apt upgrade
pip3 install progressbar clint awscli boto3 --ignore-installed six

snap install slack --classic
snap install phpstorm --classic

mkdir ~/.bash_files
cp aliases colours functions onloads path pw ~/.bash_files

cat >> ~/.bashrc <<- EOM
[[ -f ~/.bash_files/aliases ]] && . ~/.bash_files/aliases
[[ -f ~/.bash_files/colours ]] && . ~/.bash_files/colours
[[ -f ~/.bash_files/functions ]] && . ~/.bash_files/functions
[[ -f ~/.bash_files/onloads ]] && . ~/.bash_files/onloads
[[ -f ~/.bash_files/path ]] && . ~/.bash_files/path
EOM

cd ~/Documents
mkdir repos
mkdir repos/php
cd repos/php
git clone https://github.com/evaluagent/evaluagent-local-development.git

cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
echo -n $pw | sudo -S dpkg -i chrome.deb
