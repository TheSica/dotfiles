SCRIPT_DIR=$(dirname "$0")

install_mode="Unknown"

initialize_self()
{
  if [ $1 = "portable" ]; then
    install_mode="Portable"
  elif [ $1 = "install" ]; then
    install_mode="Install" 
  elif [ $1 = "continue" ]; then
    install_mode="Continue"
  else
    echo "Install mode has to be portable or install or continue. quitting"
    exit 0
  fi

  echo "Continuing init with install mode ${install_mode}"
}

initialize_zsh()
{
  echo "Initializing zsh"
  sh ${SCRIPT_DIR}/nvim/init.sh ${install_mode}
}

initialize_nvim()
{
  echo "Initializing nvim"
  sh ${SCRIPT_DIR}/zsh/init.sh ${install_mode}
}

initialize_tmux()
{
 echo "Initializing tmux"
 sh ${SCRIPT_DIR}/tmux/init.sh ${install_mode}
}

finish()
{
  echo "Now source .zshrc to ours."
}

initialize_self $1

initialize_nvim
initialize_tmux
initialize_zsh
finish

