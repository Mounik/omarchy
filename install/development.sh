#!/bin/bash

yay -S --noconfirm --needed \
  cargo clang llvm mise \
  imagemagick \
  mariadb-libs postgresql-libs \
  github-cli \
  lazygit lazydocker-bin \
  ansible opentofu

# Install Astral UV
wget -qO- https://astral.sh/uv/install.sh | sh