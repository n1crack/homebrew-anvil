cask "anvil" do
  version "0.3.4"
  sha256 "3249bdd1fbb6d7b359c513edce4d0891f96631055a4db69b9958dbcad2e8e877"

  url "https://github.com/n1crack/anvil/releases/download/v#{version}/Anvil_#{version}_universal.dmg"
  name "Anvil"
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"

  auto_updates true
  depends_on macos: :monterey

  app "Anvil.app"
  binary "#{appdir}/Anvil.app/Contents/MacOS/anvil"
end
