tap "homebrew/services"
tap "caskroom/cask"

# Unix
brew "git"
brew "openssl"
brew "the_silver_searcher"
brew "tmux"
brew "vim"
brew "cask ngrok"
brew "siege"

# Heroku
brew "heroku-toolbelt"

# GitHub
brew "hub"

# Image manipulation
brew "imagemagick"

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

# Databases
brew "postgres", restart_service: true
brew "redis", restart_service: true
brew "rabbitmq", restart_service: true
brew "beanstalkd", restart_service: true