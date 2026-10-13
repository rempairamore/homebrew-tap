cask "openfortimac" do
  version "1.3.0"
  sha256 "e1b8f23278f3c8cd1f2c608fdafbf24d5ef402ddfa3b892f16b4e3303a69f4b7"

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

  uninstall quit:   "rempairamore.OpenFortiMac",
            delete: "/etc/sudoers.d/openfortimac"

  zap trash: "~/Library/Application Support/OpenFortiMac"

  caveats <<~EOS
    OpenFortiMac is not notarized by Apple. On first launch macOS blocks it:
    open System Settings > Privacy & Security and click "Open Anyway".

    Then open OpenFortiMac Settings > General > Administrator Permission
    and click "Set Up..." so openfortivpn can start without a password prompt.
  EOS
end
