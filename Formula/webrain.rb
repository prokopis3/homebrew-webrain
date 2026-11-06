class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.17.0/webrain-macos-aarch64",
      using: :nounzip
  sha256 "83a4e736d49694b172b7090cda64f7822609efa839bb7b9113fed36f6e410657"
  version "0.17.0"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
