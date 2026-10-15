#!/bin/bash

readonly clangd_version=23.1.0

command -v "clangd" >/dev/null || (
    rm -rf "$HOME/dotfiles/downloads/clangd.zip"
    rm -rf "$HOME/dotfiles/downloads/clangd_${clangd_version}"
    curl -L --output "$HOME/dotfiles/downloads/clangd.zip" "https://github.com/clangd/clangd/releases/download/${clangd_version}/clangd-linux-${clangd_version}.zip"
    unzip "$HOME/dotfiles/downloads/clangd.zip" -d "$HOME/dotfiles/downloads"
    cp "$HOME/dotfiles/downloads/clangd_${clangd_version}/bin/clangd" "$HOME/.local/bin/clangd"
    chmod +x "$HOME/.local/bin/clangd"
)
