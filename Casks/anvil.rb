cask "anvil" do
  version "0.3.3"
  sha256 "3f79a193d0f5d0781dde698c05c83f5596dd9c573dbaccec7bd671a0d68e42ce"

  url "https://github.com/n1crack/anvil/releases/download/v#{version}/Anvil_#{version}_universal.dmg"
  name "Anvil"
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"

  auto_updates true
  depends_on macos: :monterey

  app "Anvil.app"
  binary "#{appdir}/Anvil.app/Contents/MacOS/anvil"
end
