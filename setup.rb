#!/usr/bin/env ruby
require 'pathname'
require 'fileutils'
include FileUtils

HOME_DIR = File.expand_path("~")
DOTFILES_DIR = File.expand_path(__dir__)

def system!(*args)
  system(*args) || abort("\n== Command #{args} failed ==")
end

puts "\n== Installing apple command line tools =="
system 'xcode-select --install'

puts "\n== Installing homebrew package manager =="
system! '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'

puts "\n== Installing homebrew packages =="
system! "brew bundle --file=#{File.join(DOTFILES_DIR, 'setup', 'homebrew_packages.rb')}"

puts "\n== Installing Ruby =="
system! 'rbenv install 2.3.1'
system! 'rbenv global 2.3.1'
system! 'gem install bundler'
system! 'gem install rails'

chdir HOME_DIR do
  puts "\n== Symlinking dotfiles =="
  %w(.bashrc .bash_profile .gitconfig .gemrc .tmux.conf).each do |file|
    old = File.expand_path("~/.dotfiles/#{file}")
    ln_s(old, File.expand_path("~/#{file}"))
  end

  puts "\n== Symlinking ssh config =="
  old = File.expand_path("~/.dotfiles/ssh_config")
  ln_s(old, File.expand_path("~/.ssh/config"))
end

puts "\n== Setting OSX defaults =="
osx_settings_file = File.join(DOTFILES_DIR, ".osx")
chmod "+x", osx_settings_file
system! osx_settings_file

# puts "\n== Set sublime text 2 command line tool =="
# ln_s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl", File.expand_path("~/bin/subl")