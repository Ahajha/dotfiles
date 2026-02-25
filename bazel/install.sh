# Install misc bazel tools

set -euo pipefail

readonly bazelisk_version=1.28.1
readonly buildifier_version=8.5.1
readonly starpls_version=0.1.22

if [[ "$(uname -ms)" == "Linux x86_64" ]]; then
    readonly arch="linux-amd64"
else
    echo "Unknown arch: $(uname -ms)"
    exit 1
fi

function install() {
    # $1: command
    # $2: url to download
    command -v $1 || curl -L --output ~/.local/bin/$1 $2 && chmod +x ~/.local/bin/$1
}

install bazel "https://github.com/bazelbuild/bazelisk/releases/download/v${bazelisk_version}/bazelisk-${arch}"
install buildifier "https://github.com/bazelbuild/buildtools/releases/download/v${buildifier_version}/buildifier-${arch}"
install starpls "https://github.com/withered-magic/starpls/releases/download/v${starpls_version}/starpls-${arch}"

bazel help completion bash > downloads/bazel-complete.bash
