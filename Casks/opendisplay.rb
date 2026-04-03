cask "opendisplay" do
  version "1.2.0"
  sha256 "2a727851ad004f159a039aeadeee2a4680c4e5aeca7315ecd0c42be0a26629af"

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
