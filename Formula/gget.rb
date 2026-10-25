class Gget < Formula
  desc "Download anything, upload to FTP, call APIs. One command, no flags"
  homepage "https://github.com/naviko/gget"
  version "1.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.4/gget-darwin-arm64"
      sha256 "25b05ba51ac4f6adca880cf07740d0f87935b70669ff422df192ae6caf646f9d"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.4/gget-darwin-amd64"
      sha256 "fca2a0858b4c6026d0d7559424e1323eb90cc3c78cc41a396ddd72fe8d5a687f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.4/gget-linux-arm64"
      sha256 "6b3d96f6f615372a17ff104772125bb32adfe9caf871f983e02408da6cfc42b1"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.4/gget-linux-amd64"
      sha256 "f9a54db35a6f3ab0b98a0f341ea9a173b742a4861dba770b1072b5df2060482f"
    end
  end

  def install
    bin.install Dir["gget-*"].first => "gget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gget --version")
  end
end