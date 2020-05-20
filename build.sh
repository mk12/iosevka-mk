#!/bin/bash

set -eufo pipefail

# readonly tmp=$(mktemp -d)
# readonly repo="$tmp/Iosevka"

# cleanup() {
#     rm -rf "$tmp"
# }

# # trap 'cleanup' EXIT

# cd "$(dirname "$0")"
# git clone --depth 1 git@github.com:be5invis/Iosevka "$repo"
# cp iosevka-mk.toml "$repo/private-build-plans.toml"
# npm -C "$repo" install
# npm -C "$repo" run build -- ttf::iosevka-mk
# mkdir -p ttf
repo='/var/folders/9k/5tydddxn5rl7gt9qn5grls2r0000gn/T/tmp.aEshUoWf/Iosevka'
rsync -a --delete "$repo/dist/iosevka-mk/ttf/" ttf/
