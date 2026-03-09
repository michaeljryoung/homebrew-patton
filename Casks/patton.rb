cask "patton" do
  version "1.1.3"
  sha256 "348a532d40bf84fde773cecb2985cf9eba03eb479f9fc9bca05fc2947c2ff1d0"

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
