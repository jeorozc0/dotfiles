export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source "$ZSH/oh-my-zsh.sh"

typeset -U path PATH
path=(
  "$HOME/.local/bin"
  "$HOME/.opencode/bin"
  "/opt/homebrew/opt/postgresql@16/bin"
  $path
)

export EDITOR="nvim"
export VISUAL="nvim"
export GOPATH="$HOME/go"
path=("/usr/local/go/bin" "$GOPATH/bin" $path)

alias vi="nvim"
alias vim="nvim"
alias ll='eza --long --git --icons=auto'
alias la='eza --long --git --icons=auto --all'

if [[ -o interactive && -t 0 ]] && command -v fzf >/dev/null 2>&1; then
  eval "$(fzf --zsh)"
fi

if command -v fd >/dev/null 2>&1; then
  export FZF_DEFAULT_COMMAND='fd --hidden --strip-cwd-prefix --exclude .git'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND='fd --type=d --hidden --strip-cwd-prefix --exclude .git'

  _fzf_compgen_path() {
    fd --hidden --exclude .git . "$1"
  }

  _fzf_compgen_dir() {
    fd --type=d --hidden --exclude .git . "$1"
  }
fi

setopt PROMPT_SUBST
if command -v vcprompt >/dev/null 2>&1; then
  PROMPT='▲  ${(%):-%1~}/ %F{yellow}$(vcprompt -f "(%b) ")%f'
else
  PROMPT='▲  ${(%):-%1~}/ '
fi
