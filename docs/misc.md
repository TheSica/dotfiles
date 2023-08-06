# Font used
JetBrainsMonoNerdFontMono-Regular 
https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip
From https://www.nerdfonts.com/font-downloads

# For windows terminal
Install catpuccin https://github.com/catppuccin/windows-terminal

# For ubuntu terminal
Install https://github.com/catppuccin/gnome-terminal

maybe do these
set -g default-terminal "screen-256color" set-option -sa terminal-overrides ",xterm-256color:RGB"

set -g default-terminal "tmux-256color" also works





# TODO:
    * [ ] make init files add source/tmux source to the path
    * [ ] make `clean_command` that removes all installed files
    * [ ] add `init` command that doesn't install any dependencies, just uses zip files to avoid sudo apt installs
    * [ ] if a step fails, exit
    * [x] nvim init.sh isnt relative to its location, it depends from where the root init.sh was launched
    * [x] u need to add sudo apt-get install zsh
    * [x] install zsh as last step to avoid problems from its install.sh
    * [ ] add the export TERM colors
