cask "phosphor" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://releases.phosphor.tools/stable/Phosphor-#{version}-arm64.dmg"
  name "Phosphor"
  desc "EDA workspace for electronics hardware"
  homepage "https://phosphor.tools"

  livecheck do
    url "https://releases.phosphor.tools/stable/stable-mac.yml"
    regex(/^version:\s*(\S+)/)
  end

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
