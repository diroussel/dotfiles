export BASH_SILENCE_DEPRECATION_WARNING=1

export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"

test -e "/usr/local/etc/profile.d/bash_completion.sh" && . "/usr/local/etc/profile.d/bash_completion.sh"
test -e ~/.bashrc && source ~/.bashrc
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Add .NET Core SDK tools
export PATH="$PATH:/Users/dir/.dotnet/tools"


# Setup asdf - see https://asdf-vm.com/guide/getting-started.html
. /usr/local/opt/asdf/libexec/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

