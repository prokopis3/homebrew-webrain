class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.19.0/webrain-macos-aarch64",
      using: :nounzip
  sha256 "b248e70f740313a19e017d5f0b4d98ddb69ea0d17b3032bc8a94966d6401d9e2"
  version "0.19.0"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
