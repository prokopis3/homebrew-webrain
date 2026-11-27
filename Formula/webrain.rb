class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.21.0/webrain-macos-aarch64",
      using: :nounzip
  sha256 "29b9c8a6a6edc4c878074a702b9b5a7fce549b23ee623a0610fd3aa729cec19d"
  version "0.21.0"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
