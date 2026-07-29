class Osamail < Formula
  desc "Tiny, scriptable CLI for Apple Mail"
  homepage "https://github.com/tinylion1024/osamail"
  url "https://github.com/tinylion1024/osamail/releases/download/v0.3.0/osamail-v0.3.0-universal-apple-darwin.tar.gz"
  sha256 "42f5564515d3e7389db843e738a4741b37b9578da86f7f10f223ede8c3b62cac"
  version "0.3.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "osamail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/osamail --version")
    assert_match "Usage:", shell_output("#{bin}/osamail --help")
  end
end
