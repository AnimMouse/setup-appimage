#!/bin/sh
set -eu
echo ::group::Extracting $name AppImage
chmod +x $name.AppImage
./$name.AppImage --appimage-extract > /dev/null
mv ./squashfs-root ./$name
mv ./$name/AppRun ./$name/$name
rm $name.AppImage
echo ::endgroup::