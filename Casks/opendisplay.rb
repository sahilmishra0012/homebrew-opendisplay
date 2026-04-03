cask "opendisplay" do
  version "1.0.0"
  sha256 "b9b2cc0f0bc21976bab729d660691f060eee60b9fca2d221b997697d53558522"

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
