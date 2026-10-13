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

Releases are automated by the [Release workflow](https://github.com/rempairamore/OpenFortiMac/blob/main/.github/workflows/release.yml) in the OpenFortiMac repo:

1. Pushing a `vX.Y.Z` tag there builds and attests the DMG, publishes the GitHub release and opens a pull request here that updates `version` and `sha256` in `Casks/openfortimac.rb`. The pull request is already checked with `brew style` and `brew audit --cask --strict --online`.
2. Merge the pull request to ship the update to `brew upgrade` users.

Manual fallback (only if the workflow cannot open the pull request): copy the SHA-256 from the release notes into `Casks/openfortimac.rb` together with the new `version`, run the two checks above and push.
