# Alexey's Dotfiles

My dotfiles. Shamelessly stolen from Jack Franklin who shamelessy stole them from tonnes of dotfile repositories he found online.

Files are symlinked into the proper location, and have the `.` added. For example:

```
~/dotfiles/zsh/zshrc => ~/.zshrc
~/dotfiles/git/gitignore_global => ~/.gitignore_global
...and so on
```
# Installing

- Swap your shell to ZSH (System Prefs -> Users -> Right Click on 'Advanced Settings' -> select ZSH from dropdown).
- Clone repository (I recommend `~/dotfiles`). If you don't use `~/dotfiles`, you'll have to update a couple of the scripts to point them to the right place.
- `cd ~/dotfiles`
- Go through the `Makefile` and run the commands to get the things up that you'd like.
