set -euo pipefail

readonly command="source $PWD/bash/bashrc.sh"

grep --quiet "$command" ~/.bashrc || echo "$command" >> ~/.bashrc
