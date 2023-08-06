SCRIPT_DIR=$(dirname "$0")

install_mode=$1

install_tmux()
{ 
  if [ $install_mode = "Portable" ]; then
    echo "Unable to install tmux as portable as of now"
    exit 0
  elif [ $install_mode = "Install" ]; then
    echo "Install tmux by doing some apt-get installs"
    sudo apt-get install tmux
   elif [ $install_mode = "Continue" ]; then
    echo "Will not install tmux using sudo apt-get but will continue with init process"
  fi

 }

install_tpm()
{
  echo "Installing tmux plugin manager"
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

configure_local_tmuxrc()
{
  TMUX_CONF_FILE_PATH=$HOME/.tmux.conf
  TMUX_CONF_FILE_DOTFILE_PATH=`readlink -f ${SCRIPT_DIR}/tmux.conf`
  touch $TMUX_CONF_FILE_PATH
  
  echo "source-file ${TMUX_CONF_FILE_DOTFILE_PATH}" > $TMUX_CONF_FILE_PATH
}

install_tmux  
install_tpm
configure_local_tmuxrc
