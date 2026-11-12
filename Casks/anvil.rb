cask "anvil" do
  version "0.4.3"
  sha256 "00e3d0e157d00695be473a313b9c2bfc8a371cbd73a27c10143f1c8d9d452c19"

  url "https://github.com/n1crack/anvil/releases/download/v#{version}/Anvil_#{version}_universal.dmg"
  name "Anvil"
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"

  auto_updates true
  depends_on macos: :monterey

  app "Anvil.app"
  binary "#{appdir}/Anvil.app/Contents/MacOS/anvil"
end
