class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.10.0/webrain-macos",
      using: :nounzip
  sha256 "b937f02182ac5e8cc3d3887e1aa1720e87489d982ac61a3bcd48c8413254d1d5"
  version "0.10.0"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
