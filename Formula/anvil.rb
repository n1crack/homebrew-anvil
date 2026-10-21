class Anvil < Formula
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"
  url "https://github.com/n1crack/anvil/releases/download/v0.3.0/anvil-0.3.0-universal-apple-darwin.tar.gz"
  sha256 "ea091b8899a30f9cd759cd03df4b6897826d3ff027051e5d4d100f0b8b115a72"
  license "GPL-3.0-only"

  depends_on macos: :monterey

  def install
    bin.install "anvil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anvil --version")
  end
end
