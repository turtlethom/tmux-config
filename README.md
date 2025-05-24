# Tmux Configuration Files
*Personal tmux configuration for Debian 12 and WSL environments*

## Features

- Optimized for Debian 12 and Windows Subsystem for Linux (WSL)
- Sensible defaults with improved/personal key bindings
- Enhanced status bar with useful system information
- Easy-to-remember prefix commands
- Mouse support enabled

## Prerequisites

Before installation, ensure you have:

- `tmux` installed (`sudo apt install tmux` on Debian)
- `tmux package manager` installed (`git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`)
- Git installed (`sudo apt install git`)
- Basic terminal utilities (curl, sed, etc.)

## Installation

### Automated Installation

```bash
# Create a local repository for the configuration files
git clone https://github.com/turtlethom/tmux-config.git ~/.tmux-config
# Change the current directory to '.tmux-config'
cd ~/.tmux-config
# Allow the installation script to be executable
chmod +x install.sh
# Run the installation script
./install.sh
# Install tmux plugins
PREFIX (<CTRL-SPACE> OR <CTRL-B>) + I
# Refresh tmux (or restart terminal)
PREFIX (<CTRL-SPACE> OR <CTRL-B>) + r
```
