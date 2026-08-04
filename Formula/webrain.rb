class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.1.1/webrain-macos",
      using: :nounzip
  sha256 "8be18986fa15f9ef323720765c599b52a959eafe591b7948caecdc2662f0a04c"
  version "0.1.1"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
