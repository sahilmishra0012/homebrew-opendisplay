cask "opendisplay" do
  version "1.3.5"
  sha256 "031cd9ece1be910b28051bb339e03a71521fd996e1c096ccde894fe6521d26a2"

  url "https://github.com/sahilmishra0012/OpenDisplay/releases/download/v#{version}/OpenDisplay-#{version}.zip"
  name "OpenDisplay"
  desc "Open-source display management utility for macOS"
  homepage "https://github.com/sahilmishra0012/OpenDisplay"

  depends_on macos: ">= :sonoma"

  app "OpenDisplay.app"

  postflight do
    system "xattr", "-cr", "#{appdir}/OpenDisplay.app"
    system "open", "#{appdir}/OpenDisplay.app"
  end

  zap trash: [
    "~/Library/Preferences/com.opendisplay.app.plist",
  ]
end
