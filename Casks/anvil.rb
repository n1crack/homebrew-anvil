cask "anvil" do
  version "0.2.1"
  sha256 "6178b790c271402692c15e7d7e5c093885743bfbf3ab31afcec01125c0720fe1"

  url "https://github.com/n1crack/anvil/releases/download/v#{version}/Anvil_#{version}_universal.dmg"
  name "Anvil"
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"

  auto_updates true
  depends_on :macos

  app "Anvil.app"
  binary "#{appdir}/Anvil.app/Contents/MacOS/anvil"
end
