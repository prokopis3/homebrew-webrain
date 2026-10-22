class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.9.0/webrain-macos",
      using: :nounzip
  sha256 "2acae630cdb1f800d8e7a313f32f3610739bae2464383da30f86f30d0f303a58"
  version "0.9.0"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
