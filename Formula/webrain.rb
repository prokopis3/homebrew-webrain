class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.5.0/webrain-macos",
      using: :nounzip
  sha256 "d9f76b9f0a00b426b3267c717313b450c52c7fe4cd77b38c62f483e67fbbaee4"
  version "0.5.0"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
