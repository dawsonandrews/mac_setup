## Get started

This automates all common laptop setup for developing ruby web applications

```sh
xcode-select --install
git clone https://github.com/dawsonandrews/mac_setup.git ~/.dotfiles
chmod +x ~/.dotfiles/setup.rb
~/.dotfiles/setup.rb
```

## Some manual steps

```sh
git config --global user.name "Your Name"
git config --global user.email "your_email@example.com"
git update-index --assume-unchanged ~/.dotfiles/.gitconfig
```

And install [Postgres App](http://postgresapp.com/)
