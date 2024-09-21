# Docker related aliases:
alias docstop="echo 'Stopping docker containers, please hold on...' && docker stop kali nginx ubuntu && echo 'Finished, Docker containers stopped!'"
alias docstart="echo 'Starting Docker containers, please hold on...' && docker start kali nginx ubuntu && echo 'Containers started!' && docker ps"
alias dps="docker ps"
alias dpsa="docker ps -a"

# Custom Commands:
alias update="sudo apt update && sudo apt -y upgrade && sudo apt autoremove -y && echo -e '\n\nFinished updating packages!'"
alias sd="shutdown 'now'"
alias sdr="shutdown 'now' -r"

# Locations
alias media="cd /media/$USER/"
alias docs="cd ~/Documents/"
alias dls="cd ~/Downloads/"
alias music="cd ~/Music/"
alias pics="cd ~/Pictures/"
alias vids="cd ~/Videos/"

# Scripts:
alias addext="python3 ~/.bash_scripts/addext.py"
