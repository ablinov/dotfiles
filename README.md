# Alexey's Dotfiles

My dotfiles. Shamelessly stolen from Jack Franklin who shamelessy stole them from tonnes of dotfile repositories he found online.

Files are symlinked into the proper location, and have the `.` added. For example:

```
~/dotfiles/git/gitignore_global => ~/.gitignore_global
...and so on
```

# Installing

- Clone repository (I recommend `~/dotfiles`). If you don't use `~/dotfiles`, you'll have to update a couple of the scripts to point them to the right place.
- `cd ~/dotfiles`
- Install Homebrew
- `make install_brews`
- `make fish`
- `make symlinks`
