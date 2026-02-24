# Can dump current extensions with `code --list-extensions`

set -euo pipefail

extensions=(
bazelbuild.vscode-bazel
charliermarsh.ruff
llvm-vs-code-extensions.vscode-clangd
ms-python.isort
ms-python.python
ms-python.vscode-pylance
ms-python.vscode-python-envs
ms-vscode.cpptools
)

for extension in ${extensions[@]}; do
    code --install-extension $extension
done

# One that needs to be installed manually
mkdir -p downloads
curl -L --output $PWD/downloads/bazelrc-lsp.vsix https://github.com/salesforce-misc/bazelrc-lsp/releases/download/v0.2.6/bazelrc-lsp-ubuntu-0.2.6.vsix
code --install-extension $PWD/downloads/bazelrc-lsp.vsix

# A bit manual for now but this should be okay
mkdir -p ~/.config/Code/User
rm ~/.config/Code/User/keybindings.json
rm ~/.config/Code/User/settings.json
ln -s $PWD/vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -s $PWD/vscode/settings.json ~/.config/Code/User/settings.json
