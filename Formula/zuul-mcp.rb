# typed: false
# frozen_string_literal: true

class ZuulMcp < Formula
  desc "MCP server for interacting with Zuul CI"
  homepage "https://github.com/clappingmonkey/zuul-mcp"
  version "0.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.12.2/zuul-mcp-darwin-arm64"
      sha256 "6793d159cb709e07e267843f4e655cf08fa6b8cba04134e43fcc55d31be1ebcb"
    end
    on_intel do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.12.2/zuul-mcp-darwin-amd64"
      sha256 "b185bd9c10d3d564abf5a086810eedf2d94148c6268d9a557a1c47db16b3e705"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.12.2/zuul-mcp-linux-arm64"
      sha256 "ca69977df99d619e0424cf0acd85c43de766d57597e3caa6c21a27ba2e25dfe2"
    end
    on_intel do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.12.2/zuul-mcp-linux-amd64"
      sha256 "bf77804e00061db6b5f0fdc7c2355cb3e298a8bff9f2c99af0417df8dfc98c63"
    end
  end

  def install
    bin.install Dir["zuul-mcp-*"].first => "zuul-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zuul-mcp --version")
  end
end
