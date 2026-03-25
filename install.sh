#!/bin/bash
set -e
echo "Downloading DataMessage Explorer..."
curl -sL https://github.com/hendrickcastro/DataMessageExplorer/releases/latest/download/DataMessageExplorer-macos.dmg -o /tmp/dme.dmg
echo "Mounting DMG..."
hdiutil attach /tmp/dme.dmg -nobrowse -mountpoint /tmp/dme_mount
echo "Installing to /Applications..."
rm -rf "/Applications/DataMessage Explorer.app"
cp -R "/tmp/dme_mount/DataMessage Explorer.app" /Applications/
xattr -rc "/Applications/DataMessage Explorer.app"
codesign --force --deep --sign - "/Applications/DataMessage Explorer.app"
echo "Cleaning up..."
hdiutil detach /tmp/dme_mount -quiet
rm /tmp/dme.dmg
echo "Launching..."
open "/Applications/DataMessage Explorer.app"
echo "Done!"
