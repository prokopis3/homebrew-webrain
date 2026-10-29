class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.12.1/webrain-macos",
      using: :nounzip
  sha256 "cf5fbcb6b3aedc89d9c15b756ee25016dc8b5d28879c95567a764885dbd472f5"
  version "0.12.1"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
