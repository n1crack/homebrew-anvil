class Anvil < Formula
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"
  url "https://github.com/n1crack/anvil/releases/download/v#{version}/anvil-#{version}-universal-apple-darwin.tar.gz"
  version "0.2.0"
  sha256 "ffa6855ec32021e97fe11c8c3b2fb6b206d253d2b57ec2efa8d45c5b89c1929f"
  license "GPL-3.0-only"

  depends_on :macos

  def install
    bin.install "anvil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anvil --version")
  end
end
