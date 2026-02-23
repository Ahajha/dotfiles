# Install misc bazel tools

set -euo pipefail

readonly bazelisk_version=1.28.1
readonly buildifier_version=8.5.1

if [[ "$(uname -ms)" == "Linux x86_64" ]]; then
    readonly arch="linux-amd64"
else
    echo "Unknown arch: $(uname -ms)"
    exit 1
fi

curl -L --output ~/.local/bin/bazel "https://github.com/bazelbuild/bazelisk/releases/download/v${bazelisk_version}/bazelisk-${arch}"
curl -L --output ~/.local/bin/buildifier "https://github.com/bazelbuild/buildtools/releases/download/v${buildifier_version}/buildifier-${arch}"

chmod +x ~/.local/bin/bazel
chmod +x ~/.local/bin/buildifier
