SCRIPT_DIR=$(dirname "$0")

initialize_zsh()
{
  echo "Initializing zsh"
  sh ${SCRIPT_DIR}/nvim/init.sh  
}

initialize_nvim()
{
  echo "Initializing nvim"
  sh ${SCRIPT_DIR}/zsh/init.sh
}

finish()
{
  echo "Now source .zshrc to ours."
}

initialize_zsh
initialize_nvim
finish

