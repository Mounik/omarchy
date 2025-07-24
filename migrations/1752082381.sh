echo "Adding gnome-keyring for authentication and secrets management"

if ! command -v gnome-keyring &>/dev/null; then
  yay -S --noconfirm --needed gnome-keyring
fi
