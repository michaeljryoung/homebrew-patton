cask "patton" do
  version "1.1.10"
  sha256 "46f9cd9b1b5ff4805d35cc0e74a94e13c7ff2e755b65a4243f641dc763bba2c5"

  url "https://github.com/michaeljryoung/patton/releases/download/v#{version}/Patton-#{version}-arm64.dmg"
  name "Patton"
  desc "Terminal emulator with compose panel, split panes, and tabs"
  homepage "https://github.com/michaeljryoung/patton"

  depends_on arch: :arm64

  app "Patton.app"

  zap trash: [
    "~/Library/Application Support/Patton",
    "~/Library/Preferences/com.electron.patton.plist",
  ]
end
