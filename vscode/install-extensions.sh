# Can dump current extensions with `code --list-extensions`

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
