class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.6.2/webrain-macos",
      using: :nounzip
  sha256 "f6ad68a25ee9bb500daaed9913f03961643e4a2f986b3e2a7966eeb2f628f5ee"
  version "0.6.2"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
