# typed: false
# frozen_string_literal: true

class ZuulMcp < Formula
  desc "MCP server for interacting with Zuul CI"
  homepage "https://github.com/clappingmonkey/zuul-mcp"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.12.1/zuul-mcp-darwin-arm64"
      sha256 "496f46c605add4180dbd9527d14fab71f6d675dcc0a84f629d0c0d6cf313c2f6"
    end
    on_intel do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.12.1/zuul-mcp-darwin-amd64"
      sha256 "8834b0b14b9c8c21aa833362b85b74c30b2ef2a87c00fdb0d2f1253686d2cfbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.12.1/zuul-mcp-linux-arm64"
      sha256 "97f6575ad15bc8aa3b5671f807735670b0dec6ec4c992b20e488748ef7baf7b8"
    end
    on_intel do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.12.1/zuul-mcp-linux-amd64"
      sha256 "736a35a41189ac3366f1c7f87073edf260676c629bc5cc98a25508c8668e1cd8"
    end
  end

  def install
    bin.install Dir["zuul-mcp-*"].first => "zuul-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zuul-mcp --version")
  end
end
