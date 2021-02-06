set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/bin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/sbin" $fish_user_paths
status --is-interactive; and source (rbenv init -|psub)

# Update PATH for Google Cloud SDK
if [ -f '/Users/alexey/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/alexey/Downloads/google-cloud-sdk/path.fish.inc'; end
