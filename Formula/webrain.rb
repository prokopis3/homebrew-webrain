class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.6.1/webrain-macos",
      using: :nounzip
  sha256 "277d4f5d7e96db42dabcda701c6a6b4e1fb0bb0e444fb6d9ec989e05d18cdbd5"
  version "0.6.1"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
