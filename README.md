# Daedric Morrowind — Plymouth Boot Splash

A near-black boot splash. The Daedric script is real (rendered from the
SIL-OFL font OMW Ayembedt by Georg Duffner), so each inscription is a readable phrase.

![boot](screenshots/boot.jpg)

*The image above is composed from the theme's own images at 62% progress, using the
same coordinates as the script.*

## What is on screen

- **The sigil:** static circles with compass studs, and two groups turning against
  each other: a tick ring, the outer script and a bronze eight-point star one way;
  the inner script, three orbiting embers and a blood-red star the other. Ripples
  spread from a breathing rune at the centre.
- **Progress:** the inscription under the sigil ignites rune by rune as boot
  progresses, with a thin bar beneath it. Shutdown and reboot use a different line.
- **Passphrase prompt:** a bronze-framed plate for encrypted disks.
- **No font needed in the initramfs:** all text is pre-rendered to PNG. Authored for
  1080p and scaled by screen height.

## What the runes say

| where | inscription |
|---|---|
| outer ring | MANY FALL BUT ONE REMAINS |
| inner ring | FEAR NOT FOR I AM WATCHFUL YOU HAVE BEEN CHOSEN |
| boot line | WAKE UP WE ARE HERE |
| shutdown / reboot line | WE ARE WATCHING YOU SCUM |
| centre rune | S |

## Requirements

Plymouth with the `script` module, and `splash` on the kernel command line.

## Install

    git clone https://github.com/numbpill3d/daedric-morrowind-plymouth
    cd daedric-morrowind-plymouth
    sudo ./install.sh

The installer copies the theme to `/usr/share/plymouth/themes/daedric-morrowind`,
makes it the default and rebuilds the initramfs with whichever tool the system has
(dracut, mkinitcpio or update-initramfs).

## The rest of the suite

| piece | repo |
|---|---|
| SDDM login | [daedric-morrowind-sddm](https://github.com/numbpill3d/daedric-morrowind-sddm) |
| Plymouth boot splash | [daedric-morrowind-plymouth](https://github.com/numbpill3d/daedric-morrowind-plymouth) |
| Plasma splash screen | [daedric-morrowind-splash](https://github.com/numbpill3d/daedric-morrowind-splash) |
| Lock screen wallpaper | [daedric-morrowind-lockscreen](https://github.com/numbpill3d/daedric-morrowind-lockscreen) |
| Window decoration | [daedric-morrowind-aurorae](https://github.com/numbpill3d/daedric-morrowind-aurorae) |
| Konsole + kitty colours | [daedric-morrowind-konsole](https://github.com/numbpill3d/daedric-morrowind-konsole) |

## Credits and licence

By splicer scorn (voidrane). GPL-3.0-or-later.

Unofficial fan work. The Elder Scrolls and Morrowind are trademarks of their
owner; a few short in-world phrases are quoted as inscriptions.
