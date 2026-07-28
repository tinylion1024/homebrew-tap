class TgbCli < Formula
  desc "Reliable, auditable Taoguba article collection CLI"
  homepage "https://github.com/tinylion1024/tgb-cli"
  url "https://github.com/tinylion1024/tgb-cli/releases/download/v0.1.0/tgb-cli-v0.1.0-universal-apple-darwin.tar.gz"
  sha256 "e132dcdd6874d11f67de09342f0f676aaf9fd7cfd5d1caca0e97cb1dc9b28d5b"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "tgb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tgb --version")
    assert_match "Usage:", shell_output("#{bin}/tgb --help")
  end
end
