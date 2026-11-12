class Anvil < Formula
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"
  url "https://github.com/n1crack/anvil/releases/download/v0.4.2/anvil-0.4.2-universal-apple-darwin.tar.gz"
  sha256 "6b92328fd6319ba902dab3c9f09c510d57197ca611f3fc08e693cfd1f3411a3b"
  license "GPL-3.0-only"

  depends_on macos: :monterey

  def install
    bin.install "anvil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anvil --version")
  end
end
