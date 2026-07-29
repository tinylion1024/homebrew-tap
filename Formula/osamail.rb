class Osamail < Formula
  desc "Tiny, scriptable CLI for Apple Mail"
  homepage "https://github.com/tinylion1024/osamail"
  url "https://github.com/tinylion1024/osamail/releases/download/v0.2.0/osamail-v0.2.0-universal-apple-darwin.tar.gz"
  sha256 "faac9d836a0e16ee66657930f73993110a42429a3ede6336a39fb7aca1a253f2"
  version "0.2.0"
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
