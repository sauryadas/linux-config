# Configure a Linux Machine

# Versions

DOCKER_COMPOSE_VERSION=1.5.0rc3

# Preparation

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

# Cleanup

cp -Rf . ~

