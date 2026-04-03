cask "opendisplay" do
  version "1.1.0"
  sha256 "7116d7e2df6881c14e1fbf90d4060e831439b28b20b66398ce950d1de9a77711"

  url "https://github.com/sahilmishra0012/OpenDisplay/releases/download/v#{version}/OpenDisplay-#{version}.zip"
  name "OpenDisplay"
  desc "Open-source display management utility for macOS"
  homepage "https://github.com/sahilmishra0012/OpenDisplay"

  depends_on macos: ">= :sonoma"

  app "OpenDisplay.app"

  zap trash: [
    "~/Library/Preferences/com.opendisplay.app.plist",
  ]
end
