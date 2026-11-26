cask "patton" do
  version "1.47.1"
  sha256 "bbfd59cdd707415a568d81724feb3c7f68d7de57c095ff65e8bde1e28160c553"

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
