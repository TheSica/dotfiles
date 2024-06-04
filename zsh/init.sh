SCRIPT_DIR=$(dirname "$0")

install_mode=$1

install_zsh()
{ 
  if [ $install_mode = "Portable" ]; then
    echo "Unable to install zsh as portable as of now"
    exit 0
  elif [ $install_mode = "Install" ]; then
    echo "Install zsh by doing some apt-get installs"
    sudo apt-get install zsh
   elif [ $install_mode = "Continue" ]; then
    echo "Will not install zsh using package manager but will continue with init process"
  fi

}

install_ohmyzsh()
{
  echo "Installing oh-my-zsh"
  wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -P ${SCRIPT_DIR}
  chmod +x ${SCRIPT_DIR}/install.sh
  sh "${SCRIPT_DIR}/install.sh" --unattended
}

install_autosuggestion()
{
  echo "Installing zsh-autosuggestion"
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

  # Expectation is zshrc has zsh-autosuggestions in plugins list
}

install_syntax_highlight()
{
  echo "Installing zsh-syntax-highlight"

  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

  # Expectation is zshrc has zsh-syntax-highlighting in plugins list
}

confiure_local_zshrc()
{
  ZSHRC_CONF_FILE_PATH=$HOME/.zshrc
  ZSHRC_CONF_FILE_DOTFILE_PATH=`readlink -f ${SCRIPT_DIR}/zshrc`
  
  echo "
export PATH=\$HOME/bin:/usr/local/bin:\$PATH
source ${ZSHRC_CONF_FILE_DOTFILE_PATH}" > $ZSHRC_CONF_FILE_PATH
}

cleanup()
{
  echo "Cleaning up zsh/init.sh"
  rm "${SCRIPT_DIR}/install.sh"
}

install_zsh
install_ohmyzsh
install_autosuggestion
install_syntax_highlight
confiure_local_zshrc
cleanup

