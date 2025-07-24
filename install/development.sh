#!/bin/bash

yay -S --noconfirm --needed \
  cargo clang llvm mise \
  imagemagick \
  mariadb-libs postgresql-libs \
  github-cli \
  lazygit lazydocker-bin \
  ansible opentofu \
  go

# Install LSP servers for common languages
yay -S --noconfirm --needed \
  gopls \
  pyright \
  typescript-language-server \
  rust-analyzer \
  clangd \
  lua-language-server \
  bash-language-server \
  yaml-language-server \
  json-language-server

# Install linters and formatters
yay -S --noconfirm --needed \
  golangci-lint \
  staticcheck \
  ruff \
  pylint \
  flake8 \
  eslint \
  prettier \
  shellcheck \
  yamllint \
  cppcheck \
  jq

# Install Astral UV
wget -qO- https://astral.sh/uv/install.sh | sh