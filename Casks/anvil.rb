cask "anvil" do
  version "0.4.0"
  sha256 "82bc31c9c2ffa7063e183eddd1cb27793bcc1f117d6867e8047dd522274ce64c"

  url "https://github.com/n1crack/anvil/releases/download/v#{version}/Anvil_#{version}_universal.dmg"
  name "Anvil"
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"

  auto_updates true
  depends_on macos: :monterey

  app "Anvil.app"
  binary "#{appdir}/Anvil.app/Contents/MacOS/anvil"
end
