class Anvil < Formula
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"
  url "https://github.com/n1crack/anvil/releases/download/v0.3.2/anvil-0.3.2-universal-apple-darwin.tar.gz"
  sha256 "d9f82d6c8806d37a584cf76ee037bb3e6c7b72440d2a75c3793c41caa4de577a"
  license "GPL-3.0-only"

  depends_on macos: :monterey

  def install
    bin.install "anvil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anvil --version")
  end
end
