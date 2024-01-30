# for .AppImage installation 
sudo apt install libfuse2

sudo apt install curl

sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install alacritty

sudo apt install git

# ripgrep for neovim - telescope extension
sudo apt-get install ripgrep

# fd for neovim - telescope find extension 
sudo apt install fd-find

sudo apt install tmux

# jq for json formatting
sudo apt install jq

sudo apt install zsh -y

#redis
sudo apt install lsb-release curl gpg
curl -fsSL https://packages.redis.io/gpg | sudo gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/redis.list

sudo apt-get update
sudo apt-get install redis

#docker
sudo apt install docker.io
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker

sudo apt install neovim
