cask "paperrush-bar" do
  version "1.2.0"
  sha256 "461cc1ba88bad1962a3e739a7706d3e6e4b5a98621383f5c03870fa5142c281e"

  url "https://github.com/LucasHyun/paperrush-bar/releases/download/v#{version}/PaperRushBar-v#{version}.zip",
      verified: "github.com/LucasHyun/paperrush-bar/"
  name "PaperRush Bar"
  desc "Menu bar countdown to the next AI conference deadline"
  homepage "https://github.com/LucasHyun/paperrush-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "PaperRushBar.app"

  uninstall quit: "com.lucashyun.paperrushbar"

  zap trash: [
    "~/Library/Application Support/PaperRushBar",
    "~/Library/Preferences/com.lucashyun.paperrushbar.plist",
  ]
end
