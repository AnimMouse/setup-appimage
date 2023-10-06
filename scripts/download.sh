#!/bin/sh
set -eu
echo ::group::Downloading $name AppImage
wget -qO $name.AppImage $url
echo ::endgroup::