#!/usr/bin/env bash
# Install the Daedric Morrowind Plymouth theme, make it default, rebuild the initramfs.
#   sudo ./install.sh
set -euo pipefail
[[ $EUID -eq 0 ]] || { echo "run with sudo" >&2; exit 1; }
HERE=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
NAME=daedric-morrowind
DST=/usr/share/plymouth/themes/$NAME
echo "previous theme: $(plymouth-set-default-theme)"
mkdir -p "$DST"
cp "$HERE"/*.png "$HERE/$NAME.script" "$HERE/$NAME.plymouth" "$DST"/
chmod -R a+rX "$DST"
plymouth-set-default-theme "$NAME"
if   command -v dracut-rebuild   >/dev/null; then dracut-rebuild
elif command -v mkinitcpio       >/dev/null; then mkinitcpio -P
elif command -v update-initramfs >/dev/null; then update-initramfs -u
elif command -v dracut           >/dev/null; then dracut --force --regenerate-all
else echo "Theme set, but no initramfs tool was found: rebuild your initramfs by hand." >&2
fi
echo "Installed. The splash changes at next boot."
