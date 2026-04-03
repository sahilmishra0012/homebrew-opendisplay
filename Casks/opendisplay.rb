cask "opendisplay" do
  version "1.3.2"
  sha256 "2cf491f29adda4965f29eb606bbbb953f832c107a7df39130e11d976f839faba"

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
