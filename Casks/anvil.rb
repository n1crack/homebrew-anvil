cask "anvil" do
  version "0.3.0"
  sha256 "07479a9e77ac2bf8ec03a9d34a9fde18ffa75762b4e8b0d3b996fbee5e6b1793"

  url "https://github.com/n1crack/anvil/releases/download/v#{version}/Anvil_#{version}_universal.dmg"
  name "Anvil"
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"

  auto_updates true
  depends_on macos: :monterey

  app "Anvil.app"
  binary "#{appdir}/Anvil.app/Contents/MacOS/anvil"
end
