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

  sh ${SCRIPT_DIR}/refresh_config.sh
}

#install_tmux
#install_tpm
