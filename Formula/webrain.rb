class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.15.3/webrain-macos-aarch64",
      using: :nounzip
  sha256 "ccc9fafb357401753ec6f5812d37a7eae125780d3e97ad3b9b6246d0e2b928bc"
  version "0.15.3"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
