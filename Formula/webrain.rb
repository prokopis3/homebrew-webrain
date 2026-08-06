class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.4.0/webrain-macos",
      using: :nounzip
  sha256 "59f2d70925e8babb529c3ae1ca2a436e3359d08b91a19ab3fbf0ab1cdd853d38"
  version "0.4.0"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
