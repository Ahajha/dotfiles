# Install misc bazel tools

set -euo pipefail

mkdir -p bin

# bazelisk
readonly bazelisk_version=1.28.1

if [[ "$(uname -ms)" == "Linux x86_64" ]]; then
    readonly bazelisk_arch="linux-amd64"
else
    echo "Unknown arch: $(uname -ms)"
    exit 1
fi

curl -L --output $PWD/bin/bazel "https://github.com/bazelbuild/bazelisk/releases/download/v${bazelisk_version}/bazelisk-${bazelisk_arch}"

chmod +x $PWD/bin/bazel
