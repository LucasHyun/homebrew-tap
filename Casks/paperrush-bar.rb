cask "paperrush-bar" do
  version "1.5.4"
  sha256 "3f3badbff5d2999f1c25e4b29a8ebe31383bd643cf8daf65a6058bba61f3f65b"

  url "https://github.com/LucasHyun/paperrush-bar/releases/download/v#{version}/PaperRushBar-v#{version}.zip"
  name "PaperRush Bar"
  desc "Menu bar countdown to the next AI conference deadline"
  homepage "https://github.com/LucasHyun/paperrush-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "PaperRushBar.app"

  uninstall quit: "com.lucashyun.paperrushbar"

  zap trash: [
    "~/Library/Application Support/PaperRushBar",
    "~/Library/Preferences/com.lucashyun.paperrushbar.plist",
  ]
end
