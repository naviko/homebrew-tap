class Gget < Formula
  desc "Download anything, upload to FTP, call APIs. One command, no flags"
  homepage "https://github.com/naviko/gget"
  version "1.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.6/gget-darwin-arm64"
      sha256 "b85944a9dcd8a0aa2af20542dc202a8071a5a23952e33dca2dad289075ee39d0"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.6/gget-darwin-amd64"
      sha256 "b1b9291d353a53711c1d9032f48a25a75cd68db8c2e37c30939f20241841e5bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gget/releases/download/v1.0.6/gget-linux-arm64"
      sha256 "d8c66f1762d5ff4cfe6164b8684bc5eb4813472d7ccfad6be4c4ab6b69e627f7"
    end
    on_intel do
      url "https://github.com/naviko/gget/releases/download/v1.0.6/gget-linux-amd64"
      sha256 "64d7a1ef993432a30b2fd2e2f84b50a6dbc0d813e2df4eabc1ac262e14ac673e"
    end
  end

  def install
    bin.install Dir["gget-*"].first => "gget"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gget --version")
  end
end