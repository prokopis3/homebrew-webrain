class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.17.1/webrain-macos-aarch64",
      using: :nounzip
  sha256 "0474a4c5680ac9640c73dfa317324409813e47fdc6e2dfbc9d40ec62a6a1a8c3"
  version "0.17.1"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
