class Anvil < Formula
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"
  url "https://github.com/n1crack/anvil/releases/download/v0.4.0/anvil-0.4.0-universal-apple-darwin.tar.gz"
  sha256 "bc9b3a67165d657f427dd7428ee1823542404dcdb78be4b243edf16ec9706c3b"
  license "GPL-3.0-only"

  depends_on macos: :monterey

  def install
    bin.install "anvil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anvil --version")
  end
end
