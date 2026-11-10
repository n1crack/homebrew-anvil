class Anvil < Formula
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"
  url "https://github.com/n1crack/anvil/releases/download/v0.3.5/anvil-0.3.5-universal-apple-darwin.tar.gz"
  sha256 "5f52956485ce0dfdde15b2a9056cbffe94b9ee0b7529fb0f0742998ffd21f0d4"
  license "GPL-3.0-only"

  depends_on macos: :monterey

  def install
    bin.install "anvil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anvil --version")
  end
end
