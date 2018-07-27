# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

setxkbmap us -variant colemak

export PATH="/home/$USER/VSCode-linux-x64:$PATH"
export PATH="/home/$USER/Ac6/SystemWorkbench:$PATH"
export PATH="/usr/local/clion/bin:$PATH"

export EDITOR=code
xrandr --output DP-1 --mode 3840x2160 --pos 1920x0 --output DVI-I-1 --pos 0x800
