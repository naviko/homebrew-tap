class Gget < Formula
  desc "Download anything, upload to FTP, call APIs. One command, no flags"
  homepage "https://github.com/naviko/gget"
  version "1.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.8/gget-darwin-arm64"
      sha256 "503ebaec7e385e81a07b35c214427ae46a0da08e5751b773790d35e32ed728f4"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.8/gget-darwin-amd64"
      sha256 "f83e7d9f6fce624a6b70ebbc7a2d4499b628e5b9d9930709779a9b5a4904724c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.8/gget-linux-arm64"
      sha256 "f1b7a91171ccc4dafee96f36b69a52a51334dcfdc36bc19aa2a21951a978206d"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.8/gget-linux-amd64"
      sha256 "414f697e78303511efcbae3cfc9fa7ea8e2bc226db8b4d5f1102f60404711653"
    end
  end

  def install
    bin.install Dir["gget-*"].first => "gget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gget --version")
  end
end