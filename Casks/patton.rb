cask "patton" do
  version "1.50.0"
  sha256 "e95d3ff56ba90d3d5d31e874632374345ebced4c550c00cfb086e55389abfca4"

  url "https://github.com/michaeljryoung/patton/releases/download/v#{version}/Patton-#{version}-arm64.dmg"
  name "Patton"
  desc "Terminal emulator with compose panel, split panes, and tabs"
  homepage "https://github.com/michaeljryoung/patton"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Patton.app"

  zap trash: [
    "~/Library/Application Support/Patton",
    "~/Library/Preferences/com.electron.patton.plist",
  ]
end
