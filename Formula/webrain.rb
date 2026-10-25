class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.10.0/webrain-macos",
      using: :nounzip
  sha256 "1c156c19fb4f7401f039412abdbf95cb80966f91503e8d7fe2ca2c734054b293"
  version "0.10.0"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
