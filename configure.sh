# Configure a Linux Machine

# Versions

DOCKER_COMPOSE_VERSION=1.5.0rc3

# Preparation

if [ "$EUID" -ne 0 ]
  then echo "Please run this script as root using sudo"
  exit
fi

apt-get update

# Programming

apt-get install -y ruby
apt-get install -y python-pip
apt-get install -y lynx
apt-get install -y vi
apt-get install -y emacs

# Utilities

gem install tmuxinator

# Docker

curl -L https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# git 

git config --global user.name "Ross Gardler"
git config --global user.email "ross@gardler.org"
git config credential.helper "store" 

# Cleanup

cp -Rf $SCRIPT_DIR ~

