# Docker related aliases:
alias docstop="echo 'Stopping docker containers, please hold on...' && docker stop kali nginx ubuntu && echo 'Finished, Docker containers stopped!'"
alias docstart="echo 'Starting Docker containers, please hold on...' && docker start kali nginx ubuntu && echo 'Containers started!' && docker ps"
alias dps="docker ps"
alias dpsa="docker ps -a"

# Custom Commands:
alias media="cd /media/lonelyronin/"
alias update="sudo apt update && sudo apt -y upgrade && sudo apt autoremove && echo -e '\n\nFinished updating packages!'"
alias sd="shutdown 'now'"
alias sdr="shutdown 'now' -r"

# Scripts:
alias addext="python3 ~/.bash_scripts/addext.py"
