# rempairamore/homebrew-tap

Homebrew tap for [OpenFortiMac](https://github.com/rempairamore/OpenFortiMac), a macOS menu bar app for openfortivpn.

## Install

```bash
brew install --cask rempairamore/tap/openfortimac
```

openfortivpn is installed automatically as a dependency.

## Update

```bash
brew upgrade --cask openfortimac
```

## Releasing a new version

1. In the OpenFortiMac repo run `./build_dmg.sh`: it prints the `version` and `sha256` lines.
2. Upload `OpenFortiMac_v<version>.dmg` to the GitHub release `v<version>`.
3. Paste the two lines into `Casks/openfortimac.rb`, then run `brew style rempairamore/tap` and `brew audit --cask --online rempairamore/tap/openfortimac`.
4. Commit and push.
