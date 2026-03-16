set -euo pipefail

rm -f ~/.gitconfig
ln -s $PWD/git/.gitconfig ~/.gitconfig

gh auth login
