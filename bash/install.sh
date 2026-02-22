set -euo pipefail

readonly command="source $PWD/bash/bashrc.sh"

grep --quiet "source $PWD/bash/bashrc.sh" ~/.bashrc || echo "$command" >> ~/.bashrc
