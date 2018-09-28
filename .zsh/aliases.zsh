# CLI Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias rl="source $HOME/.zshrc"
alias ea="code $MYGITHUB_DIR/dotfiles/"
alias flushdns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="$(brew --prefix coreutils)/libexec/gnubin/ls -ahlF --color --group-directories-first"

# Helpers
alias ..="cd .."
alias dir="ll"
alias clip="pbcopy"

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Directories
alias dot="cd $MYGITHUB_DIR/dotfiles"
alias library="cd $HOME/Library"
alias root="cd $CODE_DIR"

alias owa="cd $OWA_DIR"
alias mail="cd $OWA_DIR/production/owa-mail"
alias ninja="cd $OWA_DIR/internal/ninja"
