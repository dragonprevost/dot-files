export EDITOR=vim
export GOPATH='$HOME/go/bin'
export PATH_TO_FX='~/Java/javafx-sdk-11.0.2/lib'
export PATH_TO_FX_MODS='~/Java/javafx-sdk-11.0.2/lib'

alias workdir='cd work/sesame/audette-docker/audette-frontend/'
alias pip='pip3'
alias python='python3'
alias activate='source venv/bin/activate'

alias gd='git diff'
alias ls='ls'
alias gs='git status'
alias gst='git status ./'
alias gdc='git diff --cached'
alias gdch='git diff --cached ./'
alias gdh='git diff ./'
alias gac='git add-commit'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gpo='git push origin'
alias gp='git push'
alias gpl='git pull'
alias gr='git reset'
alias grh='git reset --hard'
alias gb='git branch'
alias gco='git checkout'
alias grf='git checkout --'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dragon/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/dragon/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dragon/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/dragon/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

source ~/dot-files/powerlevel10k/powerlevel10k.zsh-theme
