# Phosphor Homebrew Tap

Homebrew casks for [Phosphor](https://phosphor.tools).

## Install

```sh
brew install --cask emmapowers/tap/phosphor           # stable
brew install --cask emmapowers/tap/phosphor@testing   # testing / prereleases
```

Updates are handled by Phosphor's in-app updater — `brew upgrade` will defer
to it (`auto_updates true`).

## Platform support

Apple silicon (arm64) macOS only. Intel Macs are not built.

## Notes for maintainers

- `version` and `sha256` in each cask are bumped automatically by the
  `electron-release` workflow in `emmapowers/phosphor-tools` after each
  `sync-to-r2`. The lines are formatted so a `sed`-based bump is trivial.
- `livecheck` points at `<channel>-mac.yml` on `releases.phosphor.tools`,
  which is what `build-args.mjs` in the main repo is meant to emit via
  `-c.publish.0.channel=<channel>`. If the first stable release actually
  emits `latest-mac.yml` instead, switch the livecheck URL to match.
