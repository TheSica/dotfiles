SCRIPT_DIR=$(dirname "$0")

install_tmux()
{
  echo "Install tmux by doing some apt-get installs"
  sudo apt-get install tmux
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
