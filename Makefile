DIR=/Users/alexey/dotfiles

all:
	@echo "Run things individually!"

symlinks:
	@ln -nsf $(DIR)/zsh/zsh ~/.zsh
	@ln -sf $(DIR)/zsh/zshenv ~/.zshenv
	@ln -sf $(DIR)/zsh/zshrc ~/.zshrc
	@ln -sf $(DIR)/tmux/tmux.conf ~/.tmux.conf
	@ln -sf $(DIR)/ag/agignore ~/.agignore
	@ln -sf $(DIR)/git/gitconfig ~/.gitconfig
	@ln -sf $(DIR)/git/gitignore_global ~/.gitignore_global
	@ln -sf $(DIR)/git/git_commit_message ~/.git_commit_message
	@ln -sf $(DIR)/ctags/ctags ~/.ctags
	@ln -nsf $(DIR)/bundle ~/.bundle
	@ln -sf $(DIR)/rbenv ~/.rbenv


LATEST_RUBY="2.6.5"
ruby:
	[ -d ~/.rbenv/versions/$(LATEST_RUBY) ] || rbenv install $(LATEST_RUBY)
	rbenv global $(LATEST_RUBY)

install_brews:
	brew tap Homebrew/bundle
	brew tap Homebrew/cask-versions
	brew bundle

antigen:
	cd ~/.antigen && git clone https://github.com/zsh-users/antigen.git repo

tmux:
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
