#!/bin/sh
set -eu
echo ::group::Downloading $filename AppImage
wget -qO "$filename.AppImage" "$url"
echo ::endgroup::