class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.6.0/webrain-macos",
      using: :nounzip
  sha256 "acd180215a565191b92a2f75c9d175667d4a00c53f20316fcf13265ebd8d4d23"
  version "0.6.0"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
