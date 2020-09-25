# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
fi

export EDITOR=nvim
export GOPATH='$HOME/go/bin'
export PATH_TO_FX='~/Java/javafx-sdk-11.0.2/lib'
export PATH_TO_FX_MODS='~/Java/javafx-sdk-11.0.2/lib'

alias pip='pip3'
alias python='python3'
alias activate='source venv/bin/activate'
alias vim='vi'
alias vi='nvim'
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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
