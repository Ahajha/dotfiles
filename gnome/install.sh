set -euo pipefail

# https://gist.github.com/indraAsLesmana/cbf17f507ad35967c15aa81f58454e06
gsettings set org.freedesktop.ibus.panel.emoji hotkey "@as []" || true
