# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Omarchy is an Arch Linux system installer that transforms a fresh installation into a fully-configured, modern Hyprland-based development environment. It's similar in concept to Omakub but designed specifically for Arch Linux with Hyprland as the window manager.

## Architecture

### Installation System
- **boot.sh**: Main bootstrap script that clones the repository and initiates installation
- **install.sh**: Main installer that orchestrates the entire installation process
- **install/**: Directory containing modular installation scripts that run sequentially:
  - `1-yay.sh`: Sets up the AUR helper (yay) and pacman configuration
  - `2-identification.sh`: User and system identification setup
  - `3-terminal.sh`: Terminal environment configuration
  - `4-config.sh`: System configuration deployment
  - Additional scripts for specific components (bluetooth, desktop, development tools, etc.)

### Configuration Management
- **config/**: User configuration files for various applications (alacritty, hypr, nvim, waybar, etc.)
- **default/**: Default configuration templates and base settings
- **themes/**: Complete theme packages with coordinated styling across all applications
  - Each theme includes configurations for: alacritty, btop, hyprland, hyprlock, mako, neovim, swayosd, walker, waybar
  - Themes: catppuccin, catppuccin-latte, everforest, gruvbox, kanagawa, matte-black, nord, rose-pine, tokyo-night

### Migration System
- **migrations/**: Timestamped migration scripts for system updates and changes
- Migration files are named with Unix timestamps (e.g., `1753286633.sh`)
- Used for incremental system updates and configuration changes

## Key Components

### Core Installation Flow
1. Bootstrap via `boot.sh` downloads and runs the installer
2. `install.sh` executes all scripts in `install/` directory sequentially
3. Each installer handles a specific aspect of the system setup
4. Final steps include system updates and optional reboot

### Theme System
- Centralized theme management with complete application coverage
- Each theme provides consistent styling across the entire desktop environment
- Light/dark mode variants available for some themes (indicated by `light.mode` files)

### Configuration Structure
- Modular configuration system with separate files for different aspects
- Hyprland configuration split into logical components (bindings, input, windows, etc.)
- Application-specific configurations organized by tool

## Common Commands

### Installation
```bash
# Initial bootstrap (from fresh Arch installation)
bash <(curl -s https://omarchy.org/boot)

# Manual installation from cloned repository
source ~/.local/share/omarchy/install.sh

# Custom branch installation
OMARCHY_REF=branch-name bash <(curl -s https://omarchy.org/boot)
```

### Development
Since this is a shell-based installer system, there are no traditional build/test commands. Development involves:
- Testing installation scripts in virtual machines or containers
- Validating configuration file syntax
- Ensuring migration scripts work correctly

### System Management
- System uses standard Arch Linux package management (pacman/yay)
- Configuration changes are applied through the migration system
- Themes can be switched by running appropriate theme installation scripts

## File Organization

- **Root scripts**: Bootstrap and main installation entry points
- **install/**: Modular installation components
- **config/**: Live user configurations
- **default/**: Template and base configurations
- **themes/**: Complete theme packages
- **migrations/**: System update scripts
- **applications/**: Desktop application definitions and icons

## Development Notes

- All scripts follow bash best practices with `set -e` for error handling
- Installation process is designed to be idempotent where possible
- Migration system allows for incremental updates without full reinstallation
- Theme system ensures visual consistency across all desktop components