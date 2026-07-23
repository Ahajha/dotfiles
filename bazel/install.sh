#!/bin/bash
# Install misc bazel tools

set -euo pipefail

readonly bazelisk_version=1.28.1
readonly buildifier_version=8.5.1
readonly starpls_version=0.1.25

if [[ "$(uname -ms)" == "Linux x86_64" ]]; then
    readonly arch="linux-amd64"
else
    echo "Unknown arch: $(uname -ms)"
    exit 1
fi

function install() {
    # $1: command
    # $2: url to download
    command -v "$1" >/dev/null || (curl -L --output "$HOME/.local/bin/$1" "$2" && chmod +x "$HOME/.local/bin/$1")
}

mkdir -p ~/.local/bin
install bazel "https://github.com/bazelbuild/bazelisk/releases/download/v${bazelisk_version}/bazelisk-${arch}"
install buildifier "https://github.com/bazelbuild/buildtools/releases/download/v${buildifier_version}/buildifier-${arch}"
install buildozer "https://github.com/bazelbuild/buildtools/releases/download/v${buildifier_version}/buildozer-${arch}"
# Kill in case instances are running
pkill starpls || true
install starpls "https://github.com/modular/starpls/releases/download/v${starpls_version}/starpls-${arch}"

rm -f ~/.local/bin/bazelisk
ln -s ~/.local/bin/bazel ~/.local/bin/bazelisk

mkdir -p downloads
"$HOME/.local/bin/bazel" help completion bash > downloads/bazel-complete.bash
