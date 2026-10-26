class Gget < Formula
  desc "Download anything, upload to FTP, call APIs. One command, no flags"
  homepage "https://github.com/naviko/gget"
  version "1.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.9/gget-darwin-arm64"
      sha256 "2b8435f84c7d06d87b83e54a31a0d54a5b463a2265d02fb68a2ed158a91f9530"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.9/gget-darwin-amd64"
      sha256 "7b251fd85cd9bb777ac9c90e5aa0e2f7ce95150491639ea26ba8d61839c70460"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.9/gget-linux-arm64"
      sha256 "c81fa212dd0c74169ca70a5c64cf6f91c35d020d33499a88d615ac2fb3628d1a"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.9/gget-linux-amd64"
      sha256 "13c7e9ad801e77671fbbaae614b833e88f2fce4bec73b2dd5f9c9a7aa6bc5bf2"
    end
  end

  def install
    bin.install Dir["gget-*"].first => "gget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gget --version")
  end
end
