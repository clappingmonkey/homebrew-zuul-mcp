# typed: false
# frozen_string_literal: true

class ZuulMcp < Formula
  desc "MCP server for interacting with Zuul CI"
  homepage "https://github.com/clappingmonkey/zuul-mcp"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.10.0/zuul-mcp-darwin-arm64"
      sha256 "e7db95027a4030e145892ee5acdf0fbd7f3ad72389d96693da7f8f3c481236c6"
    end
    on_intel do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.10.0/zuul-mcp-darwin-amd64"
      sha256 "aa95f07fd20fb6e47675c604d1d218a4ba9d7f30ffaeda7dc8aca64cc721f876"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.10.0/zuul-mcp-linux-arm64"
      sha256 "5a425a1dbeddcf459a11e1e359ec125457dc423df6eef672ae43f8b1a7b0865b"
    end
    on_intel do
      url "https://github.com/clappingmonkey/zuul-mcp/releases/download/v0.10.0/zuul-mcp-linux-amd64"
      sha256 "8f02c58df466ec1875554c3bdbad7a3733b0a0ffacb415e2f969e1fd56528060"
    end
  end

  def install
    bin.install Dir["zuul-mcp-*"].first => "zuul-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/zuul-mcp --version")
  end
end
