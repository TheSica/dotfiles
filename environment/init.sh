SCRIPT_DIR=$(dirname "$0")

install_cpp()
{
  echo "Installing cpp extensions"
  sudo apt-get install build-essential gdb unzip clang
}

install_python()
{
  echo "Installing python extensions"
  sudo apt install python3 npm
}

install_python_venv()
{
  echo "Installing python virtual env"
  sudo apt install python3.10-venv
}


install_cpp
install_python
#install_python_venv
