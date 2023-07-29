install_zsh()
{
  echo "Installing zsh"
  wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh &&
  sh install.sh && rm install.sh
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

install_zsh
install_autosuggestion
install_syntax_highlight

