class Anvil < Formula
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"
  url "https://github.com/n1crack/anvil/releases/download/v0.3.3/anvil-0.3.3-universal-apple-darwin.tar.gz"
  sha256 "619ae6acca8813407502bd0c3f4d2ead2a959e415f26db55f81b40decfbab75f"
  license "GPL-3.0-only"

  depends_on macos: :monterey

  def install
    bin.install "anvil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anvil --version")
  end
end
