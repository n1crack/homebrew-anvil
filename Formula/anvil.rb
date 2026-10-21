class Anvil < Formula
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"
  url "https://github.com/n1crack/anvil/releases/download/v0.2.1/anvil-0.2.1-universal-apple-darwin.tar.gz"
  sha256 "3bbb7e91ac2b26fd2796b72e5350f2f7b2dad95d17ecb06950e285a9b7a0789c"
  license "GPL-3.0-only"

  depends_on :macos

  def install
    bin.install "anvil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anvil --version")
  end
end
