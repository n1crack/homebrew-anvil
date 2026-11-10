cask "anvil" do
  version "0.3.6"
  sha256 "be23a2964d84d966b01b74ecc4dd7d1a321d3ad9a6e35b6e183ceef5dc42b0d3"

  url "https://github.com/n1crack/anvil/releases/download/v#{version}/Anvil_#{version}_universal.dmg"
  name "Anvil"
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"

  auto_updates true
  depends_on macos: :monterey

  app "Anvil.app"
  binary "#{appdir}/Anvil.app/Contents/MacOS/anvil"
end
