tap "homebrew/services"
tap "caskroom/cask"
tap "josegonzalez/php"

# Unix
brew "git"
brew "openssl"
brew "the_silver_searcher"
brew "tmux"
brew "reattach-to-user-namespace" # For tmux to get notifications to work properly
brew "vim"
cask "ngrok"
brew "siege"

# Heroku
brew "heroku-toolbelt"

# AWS
brew "awsebcli"

# GitHub
brew "hub"

# Image manipulation
brew "imagemagick"

# Notifications
brew "terminal-notifier"

# Testing
brew "qt"

# Programming languages
brew "libyaml" # should come after openssl
brew "node"
brew "rbenv"
brew "ruby-build"
brew "php56"
brew "php56-mcrypt"
brew "php56-pdo-pgsql"
brew "yarn"

# Databases
brew "postgres", restart_service: true
brew "redis", restart_service: true
brew "beanstalkd", restart_service: true
brew "memcached", restart_service: true