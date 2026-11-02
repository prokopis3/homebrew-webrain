class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.14.5/webrain-macos-aarch64",
      using: :nounzip
  sha256 "dc1d758d3f5deffb37c0ab594fe3d65a1514bc5ebf624e4869bcc429b5663a09"
  version "0.14.5"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
