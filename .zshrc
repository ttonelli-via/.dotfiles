# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Keybinds
bindkey -e
bindkey "^p" history-search-backward
bindkey "^n" history-search-forward

# Completions
autoload -U compinit; compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

# Variables
export PLUGINDIR=$HOME/.zsh/plugins
export DEV=$HOME/Development
export CONFIG=$HOME/.config
export DOTFILES=$HOME/.dotfiles
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Aliases
alias ls="ls --color"
alias nv="nvim"

# Plugins
source $PLUGINDIR/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source $PLUGINDIR/fzf-tab/fzf-tab.plugin.zsh
source $PLUGINDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PLUGINDIR/zsh-autosuggestions/zsh-autosuggestions.zsh

# Zsh Vim Mode settings
export ZVM_VI_HIGHLIGHT_FOREGROUND=default
export ZVM_VI_HIGHLIGHT_BACKGROUND="#44475a"

# FZF settings
zvm_after_init_commands+=('eval "$(fzf --zsh)"')

export FZF_COMPLETION_TRIGGER="**" # **<TAB> to trigger completions
export FZF_COMPLETION_OPTS="
    --info=inline
    --no-scrollbar
"

export FZF_DEFAULT_OPTS="
    --color fg:#f8f8f2,bg:#282a36,hl:#bd93f9
    --color fg+:#f8f8f2,bg+:#44475a,gutter:#282a36,hl+:#bd93f9
    --color info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6
    --color marker:#ff79c6,spinner:#ffb86c,header:#6272a4
    --no-bold
"
export FZF_TMUX_OPTS="$FZF_DEFAULT_OPTS"

export FZF_CTRL_R_OPTS="
    --preview 'echo {}' --preview-window up:3:hidden:wrap
    --bind 'ctrl-/:toggle-preview'
    --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
    --header 'Press CTRL-Y to copy command into clipboard'
    --no-scrollbar
"

# Zoxide settings
export _ZO_DATA_DIR="$HOME/.local/share"
export _ZO_RESOLVE_SYMLINKS=1
export _ZO_FZF_OPTS="$FZF_DEFAULT_OPTS"

# Bun
[ -s "/Users/timtonelli/.bun/_bun" ] && source "/Users/timtonelli/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(pyenv init --path)"

eval "$(zoxide init zsh --cmd cd)"
eval "$(starship init zsh)"
