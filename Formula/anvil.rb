class Anvil < Formula
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"
  url "https://github.com/n1crack/anvil/releases/download/v0.4.1/anvil-0.4.1-universal-apple-darwin.tar.gz"
  sha256 "027ea27f65796b3b7c56ac0f7125b0be29af7a655509b68afd33e1dd728e9461"
  license "GPL-3.0-only"

  depends_on macos: :monterey

  def install
    bin.install "anvil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anvil --version")
  end
end
