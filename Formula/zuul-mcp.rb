# typed: false
# frozen_string_literal: true

class ZuulMcp < Formula
  desc "MCP server for interacting with Zuul CI"
  homepage "https://github.com/clappingmonkey/zuul-mcp"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.12.0/zuul-mcp-darwin-arm64"
      sha256 "47f3b57155fbe215b7bc27044a9dd4f5cc2a6c05485bb93197698548f48ce21c"
    end
    on_intel do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.12.0/zuul-mcp-darwin-amd64"
      sha256 "70115e2401d43ae208564c2754ec60758a6a37205b182462a4f05518f5fe0f86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.12.0/zuul-mcp-linux-arm64"
      sha256 "b0a88864d67b137912783538228c971762eee6fdfb8a73b37d55737d66f71374"
    end
    on_intel do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.12.0/zuul-mcp-linux-amd64"
      sha256 "4997301800c04833a995d7fbe87429d66f324c6c14bd85c63a67bdc193dc0fa1"
    end
  end

  def install
    bin.install Dir["zuul-mcp-*"].first => "zuul-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zuul-mcp --version")
  end
end
