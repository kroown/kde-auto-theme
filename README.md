# AutoTheme for KDE Plasma

> One command to give your whole KDE Plasma desktop a matching makeover.

![status](https://img.shields.io/badge/status-WIP-yellow)
![license](https://img.shields.io/badge/license-MIT-blue)
![kde](https://img.shields.io/badge/KDE-Plasma%206-1B6AC9)
![deps](https://img.shields.io/badge/dependencies-none-brightgreen)

## Overview

AutoTheme is an automatic theme installer for KDE Plasma. It drops in a
plasma theme, an icon theme, a color scheme and a KWin decoration profile,
then wires them all up so the desktop looks consistent after a single run.

**This repository is a work in progress — the installer script (`./install`) is intentionally empty right now.**

## Screenshot

![screenshot placeholder](assets/screenshot-main.svg)

## Requirements

- KDE Plasma 6.x
- `bash`
- `sudo` — the installer writes system-wide theme files under `/usr/share`

## Installation

```sh
git clone https://github.com/example/kde-auto-theme.git
cd kde-auto-theme
sudo ./install
```

The installer needs root privileges because theme assets are installed to
system directories:

| Path                                 | Contents          |
|--------------------------------------|-------------------|
| `/usr/share/plasma/desktoptheme`     | Plasma theme      |
| `/usr/share/icons`                   | Icon theme        |
| `/usr/share/color-schemes`           | Color scheme      |
| `/usr/share/aurorae`                 | Window decoration |

## Uninstall

```sh
sudo make uninstall
```

## Repository layout

```
.
├── install              # the installer (run with sudo) — currently blank
├── Makefile             # thin wrapper: make install / make uninstall
├── metadata.json        # package metadata
├── themes/              # theme sources (placeholders for now)
├── assets/              # screenshots and artwork
├── docs/                # extra documentation
└── scripts/             # helper scripts used during development
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md). Please keep the installer
idempotent and fail fast if `sudo` is missing.

## License

MIT — see [LICENSE](LICENSE).
