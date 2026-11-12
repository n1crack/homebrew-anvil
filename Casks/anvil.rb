cask "anvil" do
  version "0.4.2"
  sha256 "9d9b90c3c61d218b85566398ad6f6733f1dcc6a3ad5e6b72bde2a0fad2f7f43e"

  url "https://github.com/n1crack/anvil/releases/download/v#{version}/Anvil_#{version}_universal.dmg"
  name "Anvil"
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"

  auto_updates true
  depends_on macos: :monterey

  app "Anvil.app"
  binary "#{appdir}/Anvil.app/Contents/MacOS/anvil"
end
