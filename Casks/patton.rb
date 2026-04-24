cask "patton" do
  version "1.3.0"
  sha256 "8a6e9535aa62cb7f5b14ac97c3fbfa82996e82299d7f775dc4cfe6686048205b"

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
