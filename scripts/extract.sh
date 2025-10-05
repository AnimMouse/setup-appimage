#!/bin/sh
set -eu
echo ::group::Extracting $filename AppImage
chmod +x $filename.AppImage
./$filename.AppImage --appimage-extract > /dev/null
mv ./squashfs-root ./$filename
mv ./$filename/AppRun ./$filename/$filename
rm $filename.AppImage
echo ::endgroup::