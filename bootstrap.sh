rm ~/.gitconfig
ln -s $PWD/gitconfig ~/.gitconfig

# A bit manual for now but this should be okay
mkdir -p ~/.config/Code/User
rm ~/.config/Code/User/keybindings.json
rm ~/.config/Code/User/settings.json
ln -s $PWD/vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -s $PWD/vscode/settings.json ~/.config/Code/User/settings.json

./vscode/install-extensions.sh
