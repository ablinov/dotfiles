set -g fish_user_paths "/usr/local/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/bin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/sbin" $fish_user_paths
status --is-interactive; and source (rbenv init -|psub)

set -x ANDROID_HOME $HOME/Library/Android/sdk
set PATH $PATH $ANDROID_HOME/emulator
set PATH $PATH $ANDROID_HOME/tools
set PATH $PATH $ANDROID_HOME/tools/bin
set PATH $PATH $ANDROID_HOME/platform-tools

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alexey.blinov/Repos/google-cloud-sdk/path.fish.inc' ]; . '/Users/alexey.blinov/Repos/google-cloud-sdk/path.fish.inc'; end
if [ -f '/Users/alexey/Repos/google-cloud-sdk/path.fish.inc' ]; . '/Users/alexey/Repos/google-cloud-sdk/path.fish.inc'; end
