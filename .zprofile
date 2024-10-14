eval "$(/opt/homebrew/bin/brew shellenv)"

# Cargo
. "$HOME/.cargo/env"

# Volta (Node Install Manager)
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# Bun
[ -s "/Users/timtonelli/.bun/_bun" ] && source "/Users/timtonelli/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# ZVM
export ZVM_INSTALL="$HOME/.zvm/self"
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$PATH:$ZVM_INSTALL/"
