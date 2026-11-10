class Gett < Formula
  desc "Download anything, upload to FTP, call APIs"
  homepage "https://github.com/naviko/gett"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gett/releases/download/v0.1.3/gett-darwin-arm64"
      sha256 "fd85869b8a24d740d30f0fc304668e3cd48eb87dfce6b93038ec55e0ff238de2"
    end
    on_intel do
      url "https://github.com/naviko/gett/releases/download/v0.1.3/gett-darwin-amd64"
      sha256 "42ece5622ffe8e8480a487479ffec1af65727a1b46eb4de3a1a49b8f769b273f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gett/releases/download/v0.1.3/gett-linux-arm64"
      sha256 "8c7f74931d4db59adda409c82937a7eb6f6a1fadb6570187f4b217c5578717fb"
    end
    on_intel do
      url "https://github.com/naviko/gett/releases/download/v0.1.3/gett-linux-amd64"
      sha256 "f84fc343058f8d73ae35e6fd701153587cc672c6cf2b33b07566739e87198c35"
    end
  end

  def install
    bin.install Dir["gett-*"].first => "gett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gett --version")
  end
end
