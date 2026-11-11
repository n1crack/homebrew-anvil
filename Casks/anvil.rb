cask "anvil" do
  version "0.4.1"
  sha256 "3163f1b31adb9ae38303d8cb95ab48ee5d2e44f5b7da869f7ccd95832542d908"

  url "https://github.com/n1crack/anvil/releases/download/v#{version}/Anvil_#{version}_universal.dmg"
  name "Anvil"
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"

  auto_updates true
  depends_on macos: :monterey

  app "Anvil.app"
  binary "#{appdir}/Anvil.app/Contents/MacOS/anvil"
end
