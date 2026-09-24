cask "paperrush-bar" do
  version "1.5.6"
  sha256 "27aafe73e526692ddb17c55c9fdeb8f90985cb3d4c8cba02361bdc8b9e1f99b8"

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
