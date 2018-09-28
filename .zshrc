source ~/.zsh/exports.zsh

# installed from 'brew install kube-ps1'
source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"

# uncomment to profile prompt startup with zprof
# zmodload zsh/zprof

# history
SAVEHIST=100000

# antigen time!
source ~/.zsh/antigen.zsh
source ~/.zsh/antigen.bundles.zsh

# functions
source ~/.zsh/functions.zsh

# path
source ~/.zsh/path.zsh

# aliases
source ~/.zsh/aliases.zsh

# prompt
source ~/.zsh/prompt.zsh

# kubeoff by default for now
kubeoff