class TgbCli < Formula
  desc "Reliable, auditable Taoguba article collection CLI"
  homepage "https://github.com/tinylion1024/tgb-cli"
  url "https://github.com/tinylion1024/tgb-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "cc2f1d950e46885ae3b11eaa0db406d6533aaa683ec81e577504eb0d95dc932e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tgb --version")
    assert_match "Usage:", shell_output("#{bin}/tgb --help")
  end
end
