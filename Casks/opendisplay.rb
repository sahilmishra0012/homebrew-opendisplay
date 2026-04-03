cask "opendisplay" do
  version "1.3.4"
  sha256 "3b16af1e130deaaf1ca7733362c1529fa18088fe8888803c3d3add148050d260"

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
