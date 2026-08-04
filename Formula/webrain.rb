class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.2.0/webrain-macos",
      using: :nounzip
  sha256 "33cd4ce471387e1e976aa85ee74f2c8c2a15b48b3e24edfa669a37ca72b84564"
  version "0.2.0"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
