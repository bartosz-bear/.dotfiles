# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="fino-time"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git python)

source $ZSH/oh-my-zsh.sh

# Pyenv config
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Evals
eval "$(zoxide init zsh)"

# Aliases
alias bash-b='nano +99999 ~/.bashrc'
alias ls="eza --icons=always"
alias cd="z"
alias kitty="~/.local/bin/kitty"
alias kitten="~/.local/bin/kitten"

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/doc/fzf/examples/completion.zsh
source /usr/share/doc/fzf/examples/key-bindings.zsh

if [[ -f "$HOME/.zshrc.work" ]]; then
	source "$HOME/.zshrc.work"
fi
