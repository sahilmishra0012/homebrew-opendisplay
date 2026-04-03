cask "opendisplay" do
  version "1.2.0"
  sha256 "837b857fe6255166ac3e782daaa31c8f8ba5847d355ee15eafec53601fe0ab14"

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
