# Locations & Navigation:
alias ..="cd .."                                            # Move up one directory
alias ...="cd ../.."                                        # Move up two directories
alias ....="cd ../../.."                                    # Move up three directories
alias media="cd /media/$USER/"                              # Go to external drives
alias docs="cd ~/Documents/"                                # Users 'Documents' folder
alias dls="cd ~/Downloads/"                                 # Users 'Downloads' folder
alias music="cd ~/Music/"                                   # Users 'Music' folder
alias pics="cd ~/Pictures/"                                 # Users 'Pictures' folder
alias vids="cd ~/Videos/"                                   # Users 'Videos' folder


# Custom Commands:
alias cpv="rsync -ah --info-progress2"                      # Copy files with progress indicator
alias du="du -ch --max-depth=1"                             # Summarize disk usage by directory
alias f="find . -type f -name"                              # Search for files
alias hgrep="history | grep"                                # Search shell command history
alias ll="ls -al --color=auto"                              # List all files with details
alias lt="ls -ltr"                                          # List files sorted by modification date
alias mem="free -h"                                         # Summarize memory usage
alias open="xdg-open"                                       # Open files or directories with there default program
alias ports="sudo ss -tulanp"                               # Show all open ports
alias psg="ps aux | grep -v grep | grep -i"                 # Search processes by keyword
alias reload="source ~/.bashrc"                             # Reload shell configuration and aliases
alias restart="sudo systemctl restart"                      # Restart a system service
alias sd="shutdown 'now'"                                   # Shutdown the computer
alias sdr="shutdown 'now' -r"                               # Restart the computer
alias status="sudo systemctl status"                        # Check the status of a system service
alias topcpu="ps -eo pid,cmd,%mem,%cpu --sort=-%cpu | head" # List CPU intensive processes
alias topmem="ps -eo pid,cmd,%mem,%cpu --sort=-%mem | head" # List memory intensive processes
alias update="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt clean && echo -e '\n\nFinished updating packages!'" # Run package updates

ipa() { ip -4 a | grep -oP '(?<=inet\s)\d+(\.\d+){3}'; }    # Show interface IP address
mkd() { mkdir -p "$1" && cd "$1"; }                         # Make a directory and enter it


# Command overrides (implements some command safeties):
alias chgrp="chgrp --preserve-root"                         # Protect the root directory from group changes
alias chown="chown --preserve-root"                         # Protect the root directory from ownership changes
alias chmod="chmod --preserve-root"                         # Protect the root directory from permission changes
alias grep="grep --color=auto -i"                           # Case insensitive grep with colored output
alias rm="rm -i"                                            # Prompt before deleting files
