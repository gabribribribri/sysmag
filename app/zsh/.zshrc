# I don't know what are these for but I think they are important
export ZSH="$HOME/.oh-my-zsh"
export SYSMAG="$HOME/sysmag"
export HOST=$HOST

# Aliases
alias lg="lazygit"


# Highlighters
# ZSH_HIGHLIGHT_HIGHLIGHTERS+=(brackets pattern cursor regexp root line)

# Autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(
  completion
  match_prev_cmd
  history
)

# Theme
ZSH_THEME="rkj-repos"

# Plugins
plugins=(
  sudo
  aliases
  rust
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
# >>> xmake >>>
test -f "/home/gaybe/.xmake/profile" && source "/home/gaybe/.xmake/profile"
# <<< xmake <<<
