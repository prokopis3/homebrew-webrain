class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.14.0/webrain-macos-aarch64",
      using: :nounzip
  sha256 "6c062476f66d83fcd11236ff55fffad9e2dd73c0a3ec43d55aed6fca724c5d3b"
  version "0.14.0"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
