cask "patton" do
  version "1.0.0"
  sha256 "c187896eb6f32d430cace264194420fc47f80e64ded1ecf1a4676fe1984b8f1d"

  url "https://github.com/michaeljryoung/patton/releases/download/v#{version}/Patton-#{version}-arm64.dmg"
  name "Patton"
  desc "Terminal emulator with split panes, compose panel, and 19 color themes"
  homepage "https://github.com/michaeljryoung/patton"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Patton.app"

  zap trash: [
    "~/Library/Application Support/Patton",
    "~/Library/Preferences/com.electron.patton.plist",
    "~/Library/Saved Application State/com.electron.patton.savedState",
  ]
end
