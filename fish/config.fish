set -g fish_user_paths "/usr/local/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/bin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/sbin" $fish_user_paths
status --is-interactive; and source (rbenv init -|psub)

# Update PATH for Google Cloud SDK
if [ -f '/Users/alexey/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/alexey/Downloads/google-cloud-sdk/path.fish.inc'; end

set -x ANDROID_HOME $HOME/Library/Android/sdk
set PATH $PATH $ANDROID_HOME/emulator
set PATH $PATH $ANDROID_HOME/tools
set PATH $PATH $ANDROID_HOME/tools/bin
set PATH $PATH $ANDROID_HOME/platform-tools