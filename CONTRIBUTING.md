# Contributing to AutoTheme

Thanks for your interest in contributing!

## Ground rules

1. `./install` must be idempotent — running it twice should not break anything.
2. The script must check for root (`sudo`) up front and exit with a clear
   message if it is not available.
3. Never delete user files; only overwrite files this installer created.
4. Keep dependencies to what ships with a stock Plasma desktop.

## Development workflow

```sh
make lint      # shellcheck + sanity checks
make package   # build the theme bundle into dist/
```

## Reporting bugs

Open an issue with:

- Plasma version (`plasmashell --version`)
- Distro and display server (X11/Wayland)
- Output of `./install` with `-x` if it failed
