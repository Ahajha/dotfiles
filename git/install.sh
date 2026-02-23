set -euo pipefail

rm ~/.gitconfig
ln -s $PWD/git/gitconfig ~/.gitconfig
