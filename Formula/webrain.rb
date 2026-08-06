class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.3.3/webrain-macos",
      using: :nounzip
  sha256 "8510dfcd6bcd3af740317ea58352ce9ec95d3f522b58696c3865753cd45513f6"
  version "0.3.3"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
