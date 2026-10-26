class Gett < Formula
  desc "Download anything, upload to FTP, call APIs"
  homepage "https://github.com/naviko/gett"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gett/releases/download/v0.1.2/gett-darwin-arm64"
      sha256 "acc088c98ae2cd2c5606b63aae7d5d1f6e06fdb0f60b90fe10e8b7adf624abb9"
    end
    on_intel do
      url "https://github.com/naviko/gett/releases/download/v0.1.2/gett-darwin-amd64"
      sha256 "51c5fad010b7c4db4a972d9a11a8016d79c3d6a80929ab52114dc8b373cf7035"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gett/releases/download/v0.1.2/gett-linux-arm64"
      sha256 "ee1d073db0b4f507ad5962ebe4df87a90287d502fa7ebf1da612cca0ca7a83be"
    end
    on_intel do
      url "https://github.com/naviko/gett/releases/download/v0.1.2/gett-linux-amd64"
      sha256 "20f7d0b02422daa7814c98e05360fccd946237a4e35227e62f7327509ee7c5c8"
    end
  end

  def install
    bin.install Dir["gett-*"].first => "gett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gett --version")
  end
end
