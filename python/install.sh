# Misc python tools

set -euo pipefail

# uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# pixi
curl -fsSL https://pixi.sh/install.sh | PIXI_NO_PATH_UPDATE=true sh
