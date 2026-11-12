class Anvil < Formula
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"
  url "https://github.com/n1crack/anvil/releases/download/v0.4.4/anvil-0.4.4-universal-apple-darwin.tar.gz"
  sha256 "d3df1fa9d02cd367b4b32c77e1e56a123de41b4c8fdded52968243e31aab7bae"
  license "GPL-3.0-only"

  depends_on macos: :monterey

  def install
    bin.install "anvil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anvil --version")
  end
end
