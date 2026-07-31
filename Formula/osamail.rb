class Osamail < Formula
  desc "Tiny, scriptable CLI for Apple Mail"
  homepage "https://github.com/tinylion1024/osamail"
  url "https://github.com/tinylion1024/osamail/releases/download/v0.5.0/osamail-v0.5.0-universal-apple-darwin.tar.gz"
  sha256 "1b13efa19795408f2cb3404c0f50ecc47364020944ff2a5815ee8449ee27e156"
  version "0.5.0"
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
