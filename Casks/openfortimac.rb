cask "openfortimac" do
  version "1.3.4"
  sha256 "58abc8ffcc39c1f1fe5fba82d74d41ddbee6047a72b845a6eda5ec13a0f2390d"

  url "https://github.com/rempairamore/OpenFortiMac/releases/download/v#{version}/OpenFortiMac_v#{version}.dmg"
  name "OpenFortiMac"
  desc "Menu bar app for openfortivpn connections"
  homepage "https://openfortimac.invoca.me/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "openfortivpn"
  depends_on macos: :ventura

  app "OpenFortiMac.app"

  uninstall quit: "rempairamore.OpenFortiMac"

  # Homebrew also runs `uninstall` when upgrading, so the sudo rule is only removed by `zap`
  zap delete: "/etc/sudoers.d/openfortimac",
      trash:  "~/Library/Application Support/OpenFortiMac"

  caveats <<~EOS
    OpenFortiMac is not notarized by Apple. On first launch macOS blocks it:
    open System Settings > Privacy & Security and click "Open Anyway".

    Then open OpenFortiMac Settings > Permission
    and click "Set Up..." so openfortivpn can start without a password prompt.

    The sudo rule stays when OpenFortiMac is updated or uninstalled.
    Remove it from Settings > Permission > Remove, or uninstall with:
      brew uninstall --zap --cask rempairamore/tap/openfortimac
  EOS
end
