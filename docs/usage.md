# Usage

## Basic install

```sh
sudo ./install
```

The installer must be run as root because it copies theme assets into
system-wide directories under `/usr/share`.

## Planned flags

| Flag            | Effect                                        |
|-----------------|-----------------------------------------------|
| `--dry-run`     | Print what would be installed, change nothing |
| `--uninstall`   | Remove files installed by this package        |
| `--prefix DIR`  | Install under `DIR` instead of `/usr`         |
| `-v`            | Verbose output                                |

> Note: `./install` is currently empty, so none of these flags work yet.

## After installing

Log out and back in (or restart `plasmashell`) so all components pick up
the new theme, then choose **AutoTheme** in *System Settings → Appearance*.
