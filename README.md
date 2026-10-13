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

Releases are automated by the [Release workflow](https://github.com/rempairamore/OpenFortiMac/blob/main/.github/workflows/release.yml) in the OpenFortiMac repo. When a new version reaches its `main` branch, the workflow publishes the release, then opens and merges a pull request here that updates `version` and `sha256` in `Casks/openfortimac.rb`. The cask is checked with `brew style` and `brew audit --cask --strict --online` before the pull request is opened.

Manual fallback (only if the workflow cannot update the tap): copy the SHA-256 from the release notes into `Casks/openfortimac.rb` together with the new `version`, run the two checks above and push.
