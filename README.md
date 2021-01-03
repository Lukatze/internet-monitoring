# internet-monitoring
small script with systemd service + timer which executes a speedtest (every 60s) and archives it with timestamp into a csv friendly format
archives the data in a automized growing Directory structure

# dependencies
speedtest-cli
(moreutils)

# usage
clone the repository, edit the timer to your prefered interval (default is 60s) and execute the install.sh

# install.sh in detail
creates directorys: ~/.config/systemd/user and ~/.scripts 
please note if you change the directorys you will have to edit the systemD service´s "ExecStart="
moves the script into ~/.scriptes and the service + timer into ~/.config/systemd/user
after that it will start start the systemD timer as user
