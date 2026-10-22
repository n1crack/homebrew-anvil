class Anvil < Formula
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"
  url "https://github.com/n1crack/anvil/releases/download/v0.3.1/anvil-0.3.1-universal-apple-darwin.tar.gz"
  sha256 "26069ea3b4080a8465785353e51a41d7fa896cbf95ed039014cb40e384fc1c36"
  license "GPL-3.0-only"

  depends_on macos: :monterey

  def install
    bin.install "anvil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anvil --version")
  end
end
