cask "paperrush-bar" do
  version "1.5.0"
  sha256 "a5b103eb3e13011e75a6c56e02539a49ae7e33049dbeba5d62aff24574430678"

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
