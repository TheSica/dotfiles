SCRIPT_DIR=$(dirname "$0")
TMUX_CONF=$HOME/.tmux.conf

# Given .tmux.conf in $HOME
# Overwrites that with whatever we have in our local tmux.conf file

cp $SCRIPT_DIR/tmux.conf $TMUX_CONF

echo "Remember to P + I and tmux source ~/.tmux.conf"
