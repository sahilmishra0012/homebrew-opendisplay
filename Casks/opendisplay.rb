cask "opendisplay" do
  version "1.3.0"
  sha256 "0563d9b6c41fc18d63aaaed54278de51f792f621f0994d78bec817748a371735"

  url "https://github.com/sahilmishra0012/OpenDisplay/releases/download/v#{version}/OpenDisplay-#{version}.zip"
  name "OpenDisplay"
  desc "Open-source display management utility for macOS"
  homepage "https://github.com/sahilmishra0012/OpenDisplay"

  depends_on macos: ">= :sonoma"

  app "OpenDisplay.app"

  postflight do
    system "open", "#{appdir}/OpenDisplay.app"
  end

  zap trash: [
    "~/Library/Preferences/com.opendisplay.app.plist",
  ]
end
