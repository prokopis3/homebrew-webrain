class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.20.0/webrain-macos-aarch64",
      using: :nounzip
  sha256 "6d6ed0f1d06028058cd4728d8878745805abccc5bfdb071475feeec63238a4ee"
  version "0.20.0"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
