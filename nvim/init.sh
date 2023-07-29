download_neovim()
{
	echo "Downloading neovim"

	wget https://github.com/neovim/neovim/releases/download/v0.9.1/nvim-linux64.tar.gz &&
	tar -xvf nvim-linux64.tar.gz &&
	rm nvim-linux64.tar.gz
}

install_nvchad()
{
	echo "Installing nvchad"
	git clone https://github.com/TheSica/NvChad.git ~/.config/nvim --depth 1
}

download_neovim
install_nvchad

