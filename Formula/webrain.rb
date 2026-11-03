class Webrain < Formula
  desc "Portable LLM-driven browser-automation & web-scraping MCP server"
  homepage "https://github.com/prokopis3/webrain"
  url "https://github.com/prokopis3/webrain/releases/download/v0.16.2/webrain-macos-aarch64",
      using: :nounzip
  sha256 "943575add1fd0bd7773205fba0d262db361b4ace52fd370187ec5f5ef5f8cdb4"
  version "0.16.2"
  license "MIT"

  def install
    bin.install "webrain-macos" => "webrain"
  end

  test do
    assert_match "webrain", shell_output("#{bin}/webrain doctor 2>&1")
  end
end
