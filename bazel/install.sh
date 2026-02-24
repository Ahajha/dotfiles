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

curl -L --output ~/.local/bin/bazel "https://github.com/bazelbuild/bazelisk/releases/download/v${bazelisk_version}/bazelisk-${arch}"
curl -L --output ~/.local/bin/buildifier "https://github.com/bazelbuild/buildtools/releases/download/v${buildifier_version}/buildifier-${arch}"
curl -L --output ~/.local/bin/starpls "https://github.com/withered-magic/starpls/releases/download/v${starpls_version}/starpls-${arch}"

chmod +x ~/.local/bin/bazel
chmod +x ~/.local/bin/buildifier
chmod +x ~/.local/bin/starpls
