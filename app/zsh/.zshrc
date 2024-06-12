# Environement variables
export ZSH="$HOME/.oh-my-zsh"
export SYSMAG="$HOME/sysmag"
export EDITOR="/usr/bin/hx"
export HOST=$HOST
export QT_QPA_PLATFORMTHEME="qt6ct"

# Aliases
alias lg="lazygit"
alias qalc="qalc -c"

# Highlighters
ZSH_HIGHLIGHT_HIGHLIGHTERS+=(main brackets pattern cursor regexp root line)

# Autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(
  completion
  match_prev_cmd
  history
)


# Theme
ZSH_THEME="bira"

# Plugins
plugins=(
  sudo
  aliases
  rust
  zsh-autosuggestions
  zsh-syntax-highlighting
  git
)


source $ZSH/oh-my-zsh.sh


# keep at the end. If problem, this can be done with omz plugins
eval "$(zoxide init --cmd cd zsh)"

# >>> xmake >>>
test -f "/home/gaybe/.xmake/profile" && source "/home/gaybe/.xmake/profile"
# <<< xmake <<<
