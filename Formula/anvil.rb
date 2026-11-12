class Anvil < Formula
  desc "Local development environment for web projects"
  homepage "https://anvil.tr/"
  url "https://github.com/n1crack/anvil/releases/download/v0.4.3/anvil-0.4.3-universal-apple-darwin.tar.gz"
  sha256 "1bd144ed94b7b8aeefa458089debaeaf3b6978f1e20da82e1dba4c35190e06ed"
  license "GPL-3.0-only"

  depends_on macos: :monterey

  def install
    bin.install "anvil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anvil --version")
  end
end
