cleanup_nvchad()
{
  echo "Cleaning up nvchad"
  rm -r "${HOME}/.config/nvim"
  rm -r "${HOME}/.local/share/nvim"
  rm -r "${HOME}/.local/state/nvim"
}

cleanup_nvchad
