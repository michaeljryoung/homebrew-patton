cask "patton" do
  version "1.26.1"
  sha256 "a66596488d182340db5a2cb756f495c2a83ed75d551a82e85bf74fb03fd59b29"

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
