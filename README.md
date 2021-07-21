# Dotfiles

I want to recreate my environment anywhere, without much interference..

and this repository tries to achieve that (atleast to some extent).

## Usage

Please take backup of your existing configuration before proceeding.

#### Setting up for the first time
```sh
git clone https://github.com/boring-dude/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./setup
```

#### Syncing plugins
```sh
cd ~/.dotfiles
./sync plugin-name
```

### Keyboard Remapping

In you have GNOME environment, you can use gnome-tweek-tool to map `CapsLock` to function as `Ctrl`.

Follow this [AskUbuntu answer](https://askubuntu.com/a/462498) to know how..

OSX has a built-in [setting](https://stackoverflow.com/a/15462034) for the same.

### Things for the future

The `without much interference` in the first line of this document is far, far from what's actually possible with this repo today. 

For instance, I have some way to sync vim configurations, but I can't install vim.

The same holds true for emacs or zsh or any other thing.

I will add it sometime later. In the meanwhile, you will have to do some tinkering yourself:)

**Happy hacking**
