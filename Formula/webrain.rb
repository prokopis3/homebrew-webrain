class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.3.0/webrain-macos",
      using: :nounzip
  sha256 "6e40667d3dafdf20208211a9950fc4224df700010a2fb0ee1ef6e14f43530636"
  version "0.3.0"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
