#!/bin/bash

conf="/etc/vconsole.conf"
hyprconf="$HOME/.config/hypr/hyprland.conf"

# Configure French keyboard layout as default
echo "Setting up French keyboard layout..."

# Set system-wide keyboard layout to French
sudo localectl set-keymap fr
sudo localectl set-x11-keymap fr

# Ensure vconsole.conf has French layout
sudo mkdir -p /etc
if ! grep -q "KEYMAP=fr" "$conf" 2>/dev/null; then
  sudo tee "$conf" <<EOF
KEYMAP=fr
XKBLAYOUT=fr
EOF
fi

# Get layout from system configuration
layout=$(grep '^XKBLAYOUT=' "$conf" 2>/dev/null | cut -d= -f2 | tr -d '"')
variant=$(grep '^XKBVARIANT=' "$conf" 2>/dev/null | cut -d= -f2 | tr -d '"')

# Set French as default if no layout is found
if [[ -z "$layout" ]]; then
  layout="fr"
fi

# Configure Hyprland with French layout
sed -i "/^[[:space:]]*kb_options *=/i\  kb_layout = $layout" "$hyprconf"

if [[ -n "$variant" ]]; then
  sed -i "/^[[:space:]]*kb_options *=/i\  kb_variant = $variant" "$hyprconf"
fi
