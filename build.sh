#!/bin/bash

set -eufo pipefail

readonly tmp=$(mktemp -d)
readonly repo="$tmp/Iosevka"

cd "$(dirname "$0")"
git clone --depth 1 git@github.com:be5invis/Iosevka "$repo"
cp iosevka-mk.toml "$repo/private-build-plans.toml"
npm -C "$repo" install
npm -C "$repo" run build -- ttf::iosevka-mk
mkdir -p ttf
rsync -a --delete "$repo/dist/iosevka-mk/ttf/" ttf/

echo
echo "Finished building iosevka-mk."
echo "To clean up, run: rm -rf $tmp"
