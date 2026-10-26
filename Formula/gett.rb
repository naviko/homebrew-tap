class Gett < Formula
  desc "Download anything, upload to FTP, call APIs"
  homepage "https://github.com/naviko/gett"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/naviko/gett/releases/download/v0.1.1/gett-darwin-arm64"
      sha256 "5b15c14808cdd0667572a75182d3b23f7d8a03076689a5f5e012b8e0e085c69c"
    end
    on_intel do
      url "https://github.com/naviko/gett/releases/download/v0.1.1/gett-darwin-amd64"
      sha256 "d2eeaddefdd22d3e36f0beac51a333264e22f05e95eb62775479c2d2f9203a62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/naviko/gett/releases/download/v0.1.1/gett-linux-arm64"
      sha256 "c2a0f31156622b026b6e4493ab3f4b35b28fefa4784c39d9cffb7dc0feea68b1"
    end
    on_intel do
      url "https://github.com/naviko/gett/releases/download/v0.1.1/gett-linux-amd64"
      sha256 "83ad9e5ec759e493543fb3774439596399f622e9176ae31eef3864a3161f50bc"
    end
  end

  def install
    bin.install Dir["gett-*"].first => "gett"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gett --version")
  end
end
