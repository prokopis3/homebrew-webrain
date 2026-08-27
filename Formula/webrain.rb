class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.8.0/webrain-macos",
      using: :nounzip
  sha256 "cd00bd9a389050eaf66986aae836870ad3937062c96275b1b9dddb6a6eee5c1f"
  version "0.8.0"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
