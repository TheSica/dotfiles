SCRIPT_DIR=$(dirname "$0")

download_neovim()
{
	echo "Downloading neovim"

	wget https://github.com/neovim/neovim/releases/download/v0.9.1/nvim-linux64.tar.gz -P ${SCRIPT_DIR}
	tar -xvf  "${SCRIPT_DIR}/nvim-linux64.tar.gz"
}

install_nvchad()
{
	echo "Installing nvchad"
	git clone https://github.com/TheSica/NvChad.git ~/.config/nvim --depth 1
}

cleanup()
{
  echo "Cleaning up nvim/init.sh"
	rm "${SCRIPT_DIR}/nvim-linux64.tar.gz"
}

download_neovim
install_nvchad
cleanup
