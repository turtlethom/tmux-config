#!bin/bash
# Install script for tmux configuration
# Check if we're in the right directory (optional but recommended)
if [ ! -f ".tmux.config" ] || [ ! -d "tmux.d" ]; then
  echo "Error: Must run this script from the tmux-config directory"
  echo "Could not find .tmux.config or tmux.d/"
  exit 1
fi

# Get the user's home directory
HOME_DIR="$HOME"

# Backup existing tmux config if it exists
if [ -f "$HOME_DIR/.tmux.conf" ]; then
  echo "Found existing .tmux.conf - creating backup as .tmux.conf.bak"
  cp "$HOME_DIR/.tmuxconf" "$HOME_DIR/.tmux.conf.bak"
fi

# Install the new configuration
echo "Installing tmux configuration..."
cp .tmux.config "$HOME_DIR/.tmux.conf"
cp -r tmux.d "$HOME_DIR/"

echo "Installation complete!"
echo "Your tmux configuration is now installed in:"
echo " - ~/.tmux.conf"
echo " - ~/tmux.d/"
