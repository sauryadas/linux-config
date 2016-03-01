# Configure a Linux Machine

# Versions

DOCKER_COMPOSE_VERSION=1.5.0rc3

# Network Time Protocol

sudo ntpdate -b pool.ntp.org npm install hubot-twitter-mention --save 

# Preparation

SCRIPT_DIR=$(cd "${0%/*}" 2>/dev/null; echo "$PWD"/"${0##*/}")
sudo apt-get update

# Programming

sudo apt-get install -y ruby
sudo apt-get install -y python-pip
sudo apt-get install -y lynx
sudo apt-get install -y vi
sudo apt-get install -y emacs24-nox
sudo apt-get install -y subversion

# Utilities

sudo gem install tmuxinator

# Docker

curl -L https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m` > docker-compose
sudo mv docker-compose /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# git 

git config --global user.name "Saurya Das"
git config --global user.email "spd73@cornell.edu"
git config credential.helper "store" 
git config --global push.default simple

# Cleanup

cp -Rf $SCRIPT_DIR ~

