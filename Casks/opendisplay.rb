cask "opendisplay" do
  version "1.3.1"
  sha256 "dc02a9ce0b1098dd639e65142927b8bd244084d1fd8790816dedf071bac920ec"

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
