cask "patton" do
  version "1.24.0"
  sha256 "a81e5728545dd9c9b27ab58f951654484f5f44fd6de7477f6464237bd42dd5c4"

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
