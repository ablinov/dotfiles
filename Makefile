DIR=/Users/$$(whoami)/dotfiles
HOMEBREW_DIR=$$(brew --prefix)

symlinks:
	@ln -sf $(DIR)/tmux/tmux.conf ~/.tmux.conf
	@ln -sf $(DIR)/git/gitconfig ~/.gitconfig
	@ln -sf $(DIR)/git/gitignore_global ~/.gitignore_global
	@ln -sf $(DIR)/git/git_commit_message ~/.git_commit_message
	@ln -sf $(DIR)/rbenv ~/.rbenv
	@rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
	@ln -sf $(DIR)/sublime/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages

fish: FORCE
	grep -Fxe '$(HOMEBREW_DIR)/bin/fish' /etc/shells || echo $(HOMEBREW_DIR)/bin/fish | sudo tee -a /etc/shells
	@chsh -s $(HOMEBREW_DIR)/bin/fish

	@ln -nsf $(DIR)/ ~/.config

LATEST_RUBY="2.7.1"
ruby:
	[ -d ~/.rbenv/versions/$(LATEST_RUBY) ] || rbenv install $(LATEST_RUBY)
	rbenv global $(LATEST_RUBY)

install_brews:
	brew tap Homebrew/bundle
	brew tap Homebrew/cask-versions
	brew bundle

FORCE: ;
