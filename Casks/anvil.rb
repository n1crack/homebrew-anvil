cask "anvil" do
  version "0.2.0"
  sha256 "dbe0bca451110a7e902fa7c6f6c201ca89fa431f6e7d27248e964eb2c78e1d6c"

  url "https://github.com/n1crack/anvil/releases/download/v#{version}/Anvil_#{version}_universal.dmg"
  name "Anvil"
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"

  auto_updates true
  depends_on :macos

  app "Anvil.app"
  binary "#{appdir}/Anvil.app/Contents/MacOS/anvil"
end
