# use vim as an editor
export EDITOR=nvim

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# vi mode
bindkey -v

# use incremental search
bindkey ^R history-incremental-search-backward

# expand functions in the prompt
setopt prompt_subst

# ignore duplicate history entries
setopt histignoredups

# keep more history
export HISTSIZE=200

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/nigel/scratch/gcloud/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/nigel/scratch/gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/nigel/scratch/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/nigel/scratch/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

autoload -U +X bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
complete -C '/usr/local/bin/aws_completer' aws


# Created by `pipx` on 2023-04-13 00:59:46
export PATH="$PATH:/Users/nigel/.local/bin"

#Starship prompt
eval "$(starship init zsh)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Wrkr Gitlab Username
export GITLAB_USERNAME=nigel.soon

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Created by jenv www.jenv.be
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Wrkr Spring Boot
export GRADLE_USER_HOME="$HOME/.gradle"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Go
export GOBIN="$HOME/go/bin"
