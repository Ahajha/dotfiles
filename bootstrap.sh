# Runs all of the individual component install scripts.
# These scripts should be idempotent, i.e. running multiple times should not change the result.

set -euo pipefail

./bash/install.sh
./bazel/install.sh
./git/install.sh
./vscode/install.sh
