class Osamail < Formula
  desc "Tiny, scriptable CLI for Apple Mail"
  homepage "https://github.com/tinylion1024/osamail"
  url "https://github.com/tinylion1024/osamail/releases/download/v0.4.0/osamail-v0.4.0-universal-apple-darwin.tar.gz"
  sha256 "3ff1404fee397cfc683930baa7864f594e19c5a3746da77afdda63e87c96b19e"
  version "0.4.0"
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
