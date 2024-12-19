# ~/.config/shell/interactive.sh
# Author: Indrajit Ghosh
# 
#

# Recursive grep starting in current directory
rgrep() {
  # This function searches for a given pattern recursively in the current directory and all subdirectories.
  #
  # Usage:
  #   rgrep <pattern>
  #
  # Arguments:
  #   <pattern>: The pattern to search for within files in the current directory.
  #
  # Example:
  #   rgrep "error"    # Searches for the term "error" in all files and subdirectories starting from the current directory.

  if [ "$#" -eq 1 ]; then
    grep -r "${1}" ./
  fi
}


# Activate Python virtual environment
alias venv="source ./env/bin/activate"

# List all wifi networks
alias wifi-list='nmcli device wifi list'

# Download and extract audio from YouTube videos
alias extract-video='yt-dlp -S res:1080 --sponsorblock-remove all'
alias extract-audio='yt-dlp -S res:240 --extract-audio --sponsorblock-remove all'

# Some Git alias
alias gg="git status"
alias gga="git add"
alias ggc="git commit"
alias ggp="git push"
alias ggpm="git push origin master"
alias ggl="git log"
alias gglg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
alias gglg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
alias ggb="git branch"
alias ggi="git init"
alias ggd="git diff"
alias ggls="git ls-files"
alias ggr="git restore"
alias ggs="git switch"
