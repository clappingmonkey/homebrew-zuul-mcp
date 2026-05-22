# typed: false
# frozen_string_literal: true

class ZuulMcp < Formula
  desc "MCP server for interacting with Zuul CI"
  homepage "https://github.com/clappingmonkey/zuul-mcp"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.11.0/zuul-mcp-darwin-arm64"
      sha256 "f6f6d9b675397be46e5737944d91dd7e0b02b8f666ae705c2888a5379f2aaa4f"
    end
    on_intel do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.11.0/zuul-mcp-darwin-amd64"
      sha256 "59c78258376ab589df0e6032b0fba595fc1a11d6773157b940ce0a4a9e9b73f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.11.0/zuul-mcp-linux-arm64"
      sha256 "41f068f7e1a7760e797d91f125498861a359fe7ed3e60989f6551f67a7f00982"
    end
    on_intel do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.11.0/zuul-mcp-linux-amd64"
      sha256 "7bd27ffb66b7bfb85a18a62112d1cf3a2fff7ecc61f51a58e5e934be03732c30"
    end
  end

  def install
    bin.install Dir["zuul-mcp-*"].first => "zuul-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zuul-mcp --version")
  end
end
