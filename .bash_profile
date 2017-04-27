# if [ -f ~/.bashrc ]; then
#    source ~/.bashrc
# fi

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/.{path,bash_prompt,exports,aliases,functions,extra}; do
[ -r "$file" ] && source "$file"
done
unset file

# Autocomplete Grunt commands
# which grunt > /dev/null && eval "$(grunt --completion=bash)"

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

# Add some colour
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

eval "$(rbenv init -)"
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn
