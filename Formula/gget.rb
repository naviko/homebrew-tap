class Gget < Formula
  desc "Download anything, upload to FTP, call APIs. One command, no flags"
  homepage "https://github.com/naviko/gget"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.1.0/gget-darwin-arm64"
      sha256 "368dffbd4bc0cd2b26beae80f4132161244f5557d85cd1b21740015898864b4b"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.1.0/gget-darwin-amd64"
      sha256 "2effd5641fa2f06f5c94335d1f773648ab25e1d8dd3c9ef7f952c407155500d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.1.0/gget-linux-arm64"
      sha256 "50614131c581a4c4a714fe7ee8d6e327150ddf35d725bd3e4e8f12df4abd1869"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.1.0/gget-linux-amd64"
      sha256 "f6b473e3228c361f74cca1651912375402420c8739ce69a2dcf0d9f310ef491f"
    end
  end

  def install
    bin.install Dir["gget-*"].first => "gget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gget --version")
  end
end
