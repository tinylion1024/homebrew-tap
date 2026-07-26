class Osamail < Formula
  desc "Tiny, scriptable CLI for Apple Mail"
  homepage "https://github.com/tinylion1024/osamail"
  url "https://github.com/tinylion1024/osamail/releases/download/v0.1.2/osamail-v0.1.2-universal-apple-darwin.tar.gz"
  sha256 "dea6177754e4982aa75ca5126bc7e005facb1e94b2b76e8ceebce021b480ebc0"
  version "0.1.2"
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
