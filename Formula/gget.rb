class Gget < Formula
  desc "Download anything, upload to FTP, call APIs. One command, no flags"
  homepage "https://github.com/naviko/gget"
  version "1.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.5/gget-darwin-arm64"
      sha256 "f6ae2471a798c3edc3fb4a97918463df8d73425a841303015fca2892c5b9666c"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.5/gget-darwin-amd64"
      sha256 "46599bd8c4e5c559c1a795cd7ca15626b34b308cdf5f849826be1cf1a87923ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.5/gget-linux-arm64"
      sha256 "273518942952f24d6ce51e52f17ac37313f23ce95bd874e74ba244bc845c6f00"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.5/gget-linux-amd64"
      sha256 "cbf425c0c5a6f1bb78bb63862d6cd3427d88e494af2d70fd607bdc815bc9ee29"
    end
  end

  def install
    bin.install Dir["gget-*"].first => "gget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gget --version")
  end
end