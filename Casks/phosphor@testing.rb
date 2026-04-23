cask "phosphor@testing" do
  version "0.0.0-rc.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://releases.phosphor.tools/testing/Phosphor-#{version}-arm64.dmg",
      verified: "releases.phosphor.tools/testing/"
  name "Phosphor (Testing)"
  desc "EDA workspace for electronics hardware — testing channel"
  homepage "https://phosphor.tools"

  livecheck do
    url "https://releases.phosphor.tools/testing/testing-mac.yml"
    regex(/^version:\s*(\S+)/)
  end

  conflicts_with cask: "emmapowers/tap/phosphor"

  depends_on arch: :arm64
  auto_updates true

  app "Phosphor.app"

  zap trash: [
    "~/Library/Application Support/Phosphor",
    "~/Library/Caches/tools.phosphor.app",
    "~/Library/Caches/tools.phosphor.app.ShipIt",
    "~/Library/Logs/Phosphor",
    "~/Library/Preferences/tools.phosphor.app.plist",
    "~/Library/Saved Application State/tools.phosphor.app.savedState",
  ]
end
