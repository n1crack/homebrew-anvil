class Anvil < Formula
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"
  url "https://github.com/n1crack/anvil/releases/download/v0.3.6/anvil-0.3.6-universal-apple-darwin.tar.gz"
  sha256 "57291bb796167be80f535890b9a20803e2e49dba5314b490694b507b03841d5b"
  license "GPL-3.0-only"

  depends_on macos: :monterey

  def install
    bin.install "anvil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anvil --version")
  end
end
