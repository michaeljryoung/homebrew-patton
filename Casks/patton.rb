cask "patton" do
  version "1.1.8"
  sha256 "ce12f6d9475696014a600590176d8a881cf7f6e1043442c7d9708bdee96a766f"

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
