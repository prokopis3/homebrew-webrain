class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.7.3/webrain-macos",
      using: :nounzip
  sha256 "b03e07424a5255d1b77a051959e6e1c70bd2b2053b3168d79f3b8ed3ce299bb6"
  version "0.7.3"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
