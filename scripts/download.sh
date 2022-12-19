#!/bin/sh
set -eu
echo ::group::Downloading $name AppImage
aria2c -o $name.AppImage -x 16 $url
chmod +x $name.AppImage
./$name.AppImage --appimage-extract
mv ./squashfs-root ./$name
mv ./$name/AppRun ./$name/$name
rm $name.AppImage
echo ::endgroup::